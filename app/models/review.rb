class Review < ApplicationRecord
  serialize :images
  before_save :convert_images_to_a

  def convert_images_to_a
    self.images = self.images.split(',')
  end

  def formatted_images
    formatted_images = self.images.join(', ')
    formatted_images
  end
end
