class Product < ApplicationRecord
  mount_uploader :product_image, ProductImageUploader
end
