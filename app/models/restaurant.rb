class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true

  category = %w[chinese italian japanese french belgian]
  validates :category, inclusion: { in: category }

  has_many :reviews, dependent: :destroy
end
