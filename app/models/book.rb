class Book < ApplicationRecord
  belongs_to :author
  has_many :book_categories, dependent: :destroy
  has_many :categories, through: :book_categories

  validates :name, :description, presence: true
end
