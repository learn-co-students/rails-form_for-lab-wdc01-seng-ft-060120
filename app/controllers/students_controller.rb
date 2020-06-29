class StudentsController < ApplicationController
    
    def show
        find_student
    end

    def new
        @student = Student.new
    end

    def create
        @student = Student.create(strong_params)
        redirect_to student_path(@student.id)
    end

    def edit
        find_student
    end

    def update
        find_student
        @student.update(strong_params)
        @student.save

        redirect_to student_path
    end

    private

    def strong_params
        params.require(:student).permit(:first_name, :last_name)
    end

    def find_student
        @student = Student.find(params[:id])
    end
end