class PagesController < ApplicationController
  def home
    @categories = Category.all
    @books = Book.all
  end

  def about
  end

  def currently_reading
  end
end
