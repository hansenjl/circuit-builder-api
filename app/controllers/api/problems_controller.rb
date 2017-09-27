class Api::ProblemsController < ApplicationController

  def index
    render json: Problem.all
  end

  def show
  end

  def create
  end
end