class Api::ProblemsController < ApplicationController

  def index
    render json: Problem.all
  end

  def show
    render json: Problem.find_by(id: params[:id])
  end

  def create

  end
end