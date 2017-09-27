class Api::TeachersController < ApplicationController

before_action :set_teacher, only: [:show, :update, :destroy]

  def index
    render json: Teacher.all
  end

  def show
    render json: @teacher
  end

  def create
    teacher = Teacher.new(teacher_params)
    if teacher.save
      render json: teacher
    else
      render json: {message: teacher.errors}, status: 400
    end
  end

  def update
    if @teacher.authenticate(params[:teacher][:password])
      @teacher.update(teacher_params)
      if @teacher.save
        render json: teacher
      else
        render json: {message: @teacher.errors}, status: 400
      end
    else
      render json: {message: "Incorrect Password"}, status: 400
    end
  end

  def destroy
    if @teacher.destroy
      render json: {message: "Successfully Destroyed"}, status: 204
    else
      render json: {message: "Unable to destroy"}, status: 400
    end
  end

  private

  def set_teacher
    @teacher = Teacher.find_by(id: params[:id])
  end

  def teacher_params
    params.require(:teacher).permit(:name, :email, :password, :password_confirmation)
  end
end