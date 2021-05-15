class Product < ApplicationRecord
  belongs_to :product_category

  has_many :order_products, class_name: "order_product", foreign_key: "reference_id"

  validates :name, :price, presence :true

  has_one_attached :image
end
