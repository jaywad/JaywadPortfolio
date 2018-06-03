class Portfolio < ApplicationRecord
	has_many :technologies
	accepts_nested_attributes_for :technologies, 
																reject_if: lambda { |attrs| attrs["name"].blank? }

	validates_presence_of :title, :body

	mount_uploader :main_image, PortfolioUploader
	mount_uploader :thumb_image, PortfolioUploader

	def self.angular
		where(subtitle: "Angular")
	end

	scope :ruby_on_rails_portfolio_items, -> { where(subtitle: "Ruby on Rails") }

	def self.by_position
		order("position ASC")
	end
end
