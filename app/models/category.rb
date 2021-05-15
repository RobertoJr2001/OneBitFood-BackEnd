class Category < ApplicationRecord
  has_many :restaurants, class_name: "restaurant", foreign_key: "reference_id"

  validates :title, presence :true

  has_one_attached :image
end
