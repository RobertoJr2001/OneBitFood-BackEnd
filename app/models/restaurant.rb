class Restaurant < ApplicationRecord
  belongs_to :category

  has_many :product_categories
  has_many :orders, class_name: "order", foreign_key: "reference_id"
end
