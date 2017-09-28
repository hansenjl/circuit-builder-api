class Api::SessionsController < ApplicationController


  def create
    teacher = Teacher.find_by(email: params[:teacher][:email])
    if teacher.authenticate(params[:teacher][:password])
      session[:user_id] = teacher.id
      render json: teacher
    else
      render json: {message: teacher.errors}, status: 400
    end
  end

  def destroy
    if @teacher.destroy
      session.delete :user_id
      render json: {message: "Successfully Destroyed"}, status: 204
    else
      render json: {message: "Unable to destroy"}, status: 400
    end
  end

end