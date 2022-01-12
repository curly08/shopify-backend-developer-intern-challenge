class Product < ApplicationRecord
  validates :name, presence: true, length: { in: 0..40 }
  validates :description, presence: true, length: { in: 0..400 }
  validates :price, presence: true, format: { with: /\A\d+(?:\.\d{0,2})?\z/ },
                    numericality: { greater_than: 0, less_than: 10_000 }
end
