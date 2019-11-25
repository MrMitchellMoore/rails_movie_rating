require 'uploads'
class Movie < ApplicationRecord	
	belongs_to :user
	has_one_attached :image

	validate :image_format

	private

	def image_format
		return unless image.attached?
		return if image.blob.content_type
		image.purge_later
		errors.add(:image, 'Needs to be an image')
	end
end