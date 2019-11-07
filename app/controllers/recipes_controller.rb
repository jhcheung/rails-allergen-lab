class RecipesController < ApplicationController
    def index
        @recipes = Recipe.all
        if params[:min]
            @recipes = @recipes.select { |recipe| recipe.ingredients.count >= params[:min].to_i }
        elsif params[:max]
            @recipes = @recipes.select { |recipe| recipe.ingredients.count <= params[:max].to_i }
        end
    end

    def new
        @recipe = Recipe.new
        @users = User.all
    end
    

end
