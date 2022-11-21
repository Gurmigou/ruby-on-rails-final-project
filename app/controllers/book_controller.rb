class BookController < ApplicationController
  def create
    # Student.create(
    #   name: params[:name],
    #   surname: params[:surname]
    # )
  end

  def index
    @books = Book.all
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
  end

  def new
  end

  def delete
  end
end
