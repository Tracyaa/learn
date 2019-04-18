class StudentsController < ApplicationController

  before_action :get_student, only: [:show, :edit, :update]

  def index
    @students = Student.all
  end

  def show
  end

  def edit
  end

  def update
  end

  private

  def get_student
    @student = Student.find(params[:id])
  end

end
