class Api::StepsController < ApplicationController

  before_action :authenticate_user

  def create
    @step = Step.new(
      goal_id: params[:goal_id],
      date: params[:date],
      comment: params[:comment],
    )
    if @step.save
      render "show.json.jb"
    else
      render json: { errors: @step.errors.full_messages }, status: :bad_request
    end
  end

  def update
    @step = Step.find_by(id: params[:id])
    if @step.goal.user == current_user
      @step.date = params[:date] || @step.date
      @step.comment = params[:comment] || @step.comment
      if @step.save
        render "show.json.jb"
      else
        render json: { errors: @step.errors.full_messages}, status: :bad_request
      end
    else
      render json: { errors: @step.errors.full_messages }, status: :bad_request
    end
  end

  def destroy
    step = Step.find_by(id: params[:id])
    if step.goal.user == current_user
      step.destroy
      render json: { message: "STEP DELETED" }
    else
      render json: { message: "ACCESS DENIED" }
    end
  end

end
