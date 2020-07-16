class BooksController < ApplicationController
  def index
    @categories = Category.all
    if params[:category]
      @books = Book.categorized_with(params[:category])
    else
      @books = Book.all
    end
  end

  def show
    @book = Book.find(params[:id])
  end
end
