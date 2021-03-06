class Api::ProblemsController < ApplicationController

  before_action :set_problem, only: [:show, :update, :destroy]

  def index
    render json: Problem.all
  end

  def show
    render json: @problem
  end

  def create
    problem = Problem.new(problem_params)
    if problem.save
      render json: problem
    else
      render json: {message: problem.errors}, status: 400
    end
  end

  def destroy
    if @problem.destroy
      render json: {message: "Successfully destroyed"}, status: 204
    else
      render json: {message: "Unable to destroy"}, status: 400
    end
  end

  def update
    if @problem.update(problem_params)
      render json: @problem
    else
      render json: {message: "Unable to update"}, status: 400
    end
  end

  private

  def set_problem
    @problem = Problem.find_by(id: params[:id])
  end

  def problem_params
    params.require(:problem).permit(:difficulty, :likes, :category, :tot_voltage, :tot_resistance, :tot_current, loops_attributes: [:l_voltage, :l_resistance, :l_current, resistors_attributes: [:voltage, :current, :resistance, :num]])
  end
end