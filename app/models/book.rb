class Book < ApplicationRecord
  belongs_to :author
  has_many :book_categories, dependent: :destroy
  has_many :categories, through: :book_categories
  has_one_attached :photo

  validates :name, :description, presence: true

  # class method that when called on an instance of Book and passed the name
  # of a category as a parameter will return all the books of that category

  def self.categorized_with(category)
    Category.find_by_name(category).books
  end
end
