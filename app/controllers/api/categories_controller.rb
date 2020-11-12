class Api::CategoriesController < ApplicationController

  # before_action :authenticate_user

  def index
    @categories = Category.all
    render "index.json.jb"
  end

  def show
    @category = Category.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @categories = Category.find_by(id: params[:id])
    @category.name = params[:name] || @category.name
    render "show.json.jb"
  end

end
