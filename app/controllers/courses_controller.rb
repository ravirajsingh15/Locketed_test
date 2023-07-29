class CoursesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)

    if @course.save
      redirect_to @course, notice: 'Course was successfully created.'
    else
      render :new
    end
  end

  private

  def course_params
    params.require(:course).permit(:name, :description, tutors_attributes: [:id, :name, :email, :experience, :age])
  end
end
