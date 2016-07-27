require 'test_helper'

class BooksControllerTest < ActionController::TestCase

  test "the truth" do
    assert true
  end

  test "can add book to library" do
    response = get :add_book, {book: {name: "this one"}}
    assert_response :success
  end

  test "can get to edit book in library" do
    @book = Book.last
    resonse = get :edit, {id: @book.id}
    assert_response :success
  end

  test "can update book" do
    @book = Book.last
    response = patch :update, {id: @book.id, book: {name: "Changed Book"}}
    @book.reload
    assert_equal "Changed Book", @book.name
    assert_response :redirect
  end

  test "can burn book in library" do
    @book = Book.last
    response = delete :burn, {id: @book.id}
    assert_response :redirect
    assert_raises ActiveRecord::RecordNotFound do
    @book.reload
    end
  end


end
