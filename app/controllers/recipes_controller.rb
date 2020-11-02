class RecipesController < ApplicationController
  def index
    @resipies = Recipe.all
  end

  def show
    @resipe = Recipe.one(params[:id])
  end
end
