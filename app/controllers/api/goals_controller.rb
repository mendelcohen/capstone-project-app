class Api::GoalsController < ApplicationController

  def index
    @goals = Goal.all
    render "index.json.jb"
  end

  def create
    @goal = Goal.new(
      name: params[:name],
      category_id: params[:category_id],
      description: params[:description],
      begin_date: params[:begin_date],
      end_date: params[:end_date],
      image_url: params[:image_url],
      user_id: params[:user_id]
    )
    if @goal.save
      render "show.json.jb"
    else
      render json: { errors: @goal.errors.full_messages}, status: :bad_request
    end
  end

  def show
    @goal = Goal.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @goal = Goal.find_by(id: params[:id])
    @goal.name = params[:name] || @goal.name
    @goal.category_id = params[:category_id] || @goal.category_id
    @goal.description = params[:description] || @goal.description
    @goal.begin_date = params[:begin_date] || @goal.begin_date
    @goal.end_date = params[:end_date] || @goal.end_date
    @goal.image_url = params[:image_url] || @goal.image_url
    if @goal.save
      render "show.json.jb"
    else
      render json: { errors: @goal.errors.full_messages}, status: :bad_request
    end
  end

  def destroy
    goal = Goal.find_by(id: params[:id])
    goal.destroy
    render json: { message: "GOAL DELETED" }
  end

end
