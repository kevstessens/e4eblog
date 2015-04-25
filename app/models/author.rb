class Author < ActiveRecord::Base
  has_many :articles
  mount_uploader :main_image, ImageUploader

end
