class BookController < ApplicationController
  def show
    @book = Book.includes(reviews: :user).find(params[:id])
  end
end
