class RecipesController < ApplicationController

  def index
    @search = nil  
    @recipes = []
  end
end
