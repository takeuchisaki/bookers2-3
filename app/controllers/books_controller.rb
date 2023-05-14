class BooksController < ApplicationController
  def index
    @book = Book.new
    @books = Book.all
  end

  def show
    @user = User.find(params[:id])
    @book = Book.find(params[:id])
    @bookn = Book.new
  end

  def edit
    @book = Book.find(params[:id])
  end
end
