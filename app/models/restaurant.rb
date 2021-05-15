class Restaurant < ApplicationRecord
  belongs_to :category

  has_many :product_categories
  has_many :orders, class_name: "order", foreign_key: "reference_id"

  validates :name, :delivery_tax, :city, :neighborhood, :street, :number, presence: true

  has_one_attached :image
end
