class Api::CategoriesController < ApplicationController

  # before_action :authenticate_admin, except: :index

  def index
    @categories = Category.all
    render "index.json.jb"
  end

end
