class User < ApplicationRecord
    has_many :allergies, :dependent => :destroy
    has_many :ingredients, through: :allergies, :dependent => :destroy
    has_many :recipes, :dependent => :destroy
    has_many :recipe_ingredients, through: :recipes, :dependent => :destroy
end
