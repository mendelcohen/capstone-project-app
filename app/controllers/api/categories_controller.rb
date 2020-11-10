class Api::CategoriesController < ApplicationController

  # before_action :authenticate_admin, except: :index

  def index
    @categories = Category.all
    render "index.json.jb"
  end

  def update
    @categories = Category.find_by(id: params[:id])
    @category.name = params[:name] || @category.name
    render "show.json.jb"
  end

end
