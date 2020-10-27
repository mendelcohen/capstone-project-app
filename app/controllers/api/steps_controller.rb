class Api::StepsController < ApplicationController

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
    
    @step.goal_id = params[:goal_id] || @step.goal_id
    @step.date = params[:date] || @step.date
    
    @step.comment = params[:comment] || @step.comment
    if @step.save
      render "show.json.jb"
    else
      render json: { errors: @step.errors.full_messages}, status: :bad_request
    end
  end

  def destroy
    step = Step.find_by(id: params[:id])
    step.destroy
    render json: { message: "STEP DELETED" }
  end



end
