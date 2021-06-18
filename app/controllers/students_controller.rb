class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    Student.create(params)
    redirect_to student_new_path
  end

  def set_student
    @student = Student.find(params[:id])
  end

end
