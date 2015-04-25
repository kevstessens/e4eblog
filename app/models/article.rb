class Article < ActiveRecord::Base
  belongs_to :category
  belongs_to :author

  mount_uploader :main_image, ImageUploader

end
