class PagesController < ApplicationController
  def home
    @categories = Category.all
    @books = Book.all
  end
end
