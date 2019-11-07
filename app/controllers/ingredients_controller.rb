class IngredientsController < ApplicationController
    def index
        @ingredients = Ingredient.select("ingredients.*, COUNT(allergies.id) allergies_count").joins(:allergies).group("ingredients.id").order("allergies_count DESC")
    end

    def show
        @ingredient = Ingredient.find(params[:id])
        @recipes = @ingredient.recipes
    end
end
