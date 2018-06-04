class Blog < ApplicationRecord

  enum status: { draft: 0, published: 1 }
  
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :body

  belongs_to :topic
  belongs_to :user

  default_scope { order(created_at: :desc) }
end
