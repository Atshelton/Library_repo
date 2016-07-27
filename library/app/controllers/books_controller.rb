class BooksController < ApplicationController

  def index
  end

  def show
    @books = Book.all
    render :show
  end

  def add_book
    @books = Book.all
    @book = Book.create!(name: params["book"]["name"])
    render :show
  end

  def view_contents
  end

  def edit_book
  end

end
