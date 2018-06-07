class Topic < ApplicationRecord
  validates_presence_of :title

  has_many :blogs, dependent: :destroy

  def self.with_blogs user
    if user == 1
      includes(:blogs).where.not(blogs: { id: nil })
    else
      includes(:blogs).where.not(blogs: { id: nil, status: 0 })
    end
  end
end
