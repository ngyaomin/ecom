class Product < ApplicationRecord
  mount_uploader :product_image, ProductImageUploader
  belongs_to :user
end
