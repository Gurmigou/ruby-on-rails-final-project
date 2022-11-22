class BookController < ApplicationController
  def create
    # "book"=>{"name"=>"123123213123213", "order_date"=>"2022-11-07", "issue_date"=>"2022-11-14"}, "student_id"=>"5",

    Book.create(
      name: params[:book][:name],
      order_date: params[:book][:order_date],
      issue_date: params[:book][:issue_date],
      student_id: params[:student_id]
    )

    redirect_to book_index_path
  end

  def index
    @books = Book.all
  end

  def edit
    @book = Book.find(params[:id])
    @students = Student.all
  end

  def update
    @book = Book.find(params[:id])
    @book.update(
      name: params[:book][:name],
      order_date: params[:book][:order_date],
      issue_date: params[:book][:issue_date],
      student_id: params[:student_id]
    )
    redirect_to book_index_path
  end

  def new
    @students = Student.all
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to book_index_path
  end
end
