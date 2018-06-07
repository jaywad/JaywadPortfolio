class TopicsController < ApplicationController
  before_action :set_sidebar_topics
  layout 'blog'

  def index
    @topics = Topic.all
  end

  def show
    @topic = Topic.find(params[:id])

    if logged_in?(:site_admin)
      @blogs = @topic.blogs.page(params[:page]).per(5)
    else
      @blogs = @topic.blogs.published.page(params[:page]).per(5)
    end
  end

  private

  def set_sidebar_topics
    if logged_in?(:site_admin)
      @side_bar_topics = Topic.with_blogs(1)
    else
      @side_bar_topics = Topic.with_blogs(0)
    end
  end
end
