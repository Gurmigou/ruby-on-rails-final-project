class StudentController < ApplicationController
  def create
    Student.create(
      name: params[:name],
      surname: params[:surname]
    )
  end

  def index
    @students = Student.all
  end

  def edit
    # puts "Id: #{params[:id]}"
    @student = Student.find(params[:id])
  end

  def update
  end

  def new
  end

  def delete
  end
end
