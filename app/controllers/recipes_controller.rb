class RecipesController < ApplicationController
  def index
    @search_term = params[:search] || 'chocolate'
    puts "Search term is #{@search_term}"
    @recipes = Recipe.for(@search_term)
  end
end
