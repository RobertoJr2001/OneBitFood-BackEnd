class Order < ApplicationRecord
  belongs_to :restaurant
  has_many :order_products, class_name: "order_product", foreign_key: "reference_id"
end
