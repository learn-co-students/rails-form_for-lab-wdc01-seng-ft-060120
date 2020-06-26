class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = find_student_params
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create(student_params)
    redirect_to student_path(@student.id)
  end 

  def edit
    @student = find_student_params
  end

  def update
    @student = find_student_params
    @student.update(student_params)
    redirect_to student_path(@student.id)
  end 

  private

  def find_student_params
    Student.find(params[:id])
  end 

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end 
end
