class RecipesController < ApplicationController
  def index
    @resipies = Recipe.get_list
  end

  def show
    @resipe = Recipe.get_one(params[:id])
  end
end
