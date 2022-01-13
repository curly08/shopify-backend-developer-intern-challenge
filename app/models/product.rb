class Product < ApplicationRecord
  validates :name, presence: true, length: { in: 0..40 }
  validates :description, presence: true, length: { in: 0..400 }
  validates :price, presence: true, format: { with: /\A\d+(?:\.\d{0,2})?\z/ },
                    numericality: { greater_than: 0, less_than: 10_000 }

  def self.to_csv
    CSV.generate(headers: true) do |csv|
      csv << column_names

      all.each do |product|
        csv << product.attributes.values_at(*column_names)
      end
    end
  end
end
