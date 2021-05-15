class Order < ApplicationRecord
  belongs_to :restaurant
  has_many :order_products, class_name: "order_product", foreign_key: "reference_id"

  validates :name, :phone_number, :total_value, :city, :neighborhood, :street, :number, presence: true

  enum status: { waiting: 0, delivered: 1 }
end
