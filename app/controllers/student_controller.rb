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
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(
      name: params[:student][:name],
      surname: params[:student][:surname]
    )
    redirect_to student_index_path
  end

  def destroy
    @student = Student.find(params[:id])
    Book.destroy_by(student_id: @student.id)

    @student.destroy
    redirect_to student_index_path
  end

  def new
  end

  def delete
  end
end
