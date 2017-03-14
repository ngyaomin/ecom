class Product < ApplicationRecord
  mount_uploader :product_image, ProductImageUploader
  belongs_to :user
    validates :product_image, presence: true
    validates :name, presence: true
    validates :price, presence: true
    validates :description, presence: true
    validates :inventory_available, presence: true
    validates :purchase_quantity, presence: true
end
