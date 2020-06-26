class SchoolClassesController < ApplicationController
  def index
    @school_classes = SchoolClass.all 
  end

  def show
    @school_class = find_sc_params
  end

  def new
    @school_class = SchoolClass.new 
    render :new
  end
  
  def create
    @school_class = SchoolClass.create(school_class_params)
    redirect_to school_class_path(@school_class.id)
  end 

  def edit
    @school_class = find_sc_params
  end

  def update
    @school_class = find_sc_params 
    @school_class.update(school_class_params)
    redirect_to school_class_path(@school_class.id)
  end 

  private 
  
  def find_sc_params
    SchoolClass.find(params[:id])
  end 

  def school_class_params
    params.require(:school_class).permit(:title, :room_number)
  end 
end
