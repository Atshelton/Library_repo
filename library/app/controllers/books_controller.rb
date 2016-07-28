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
    @book = Book.find(params["id"])
  end

  def edit
    @book = Book.find(params["id"])
    render :edit
  end

  def update
    @book = Book.find(params["id"])
    @book.update(book_params)
    redirect_to library_path(id: @book.id)
  end

  def burn
    @book = Book.find(params["id"])
    @book.destroy
    redirect_to book_path
  end

  private def book_params
    params.require("book").permit(:name)
  end
end
