class Book < ApplicationRecord
  belongs_to :author
  has_many :book_categories, dependent: :destroy
  has_many :categories, through: :book_categories
  has_one_attached :photo

  validates :name, :description, presence: true

  def self.categorized_with(category)
    Category.find_by_name(category).books
  end
end
