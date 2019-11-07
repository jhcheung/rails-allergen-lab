# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Recipe.destroy_all
Ingredient.destroy_all
RecipeIngredient.destroy_all
Allergy.destroy_all

user1 = User.create(name: "Jimmy")
user2 = User.create(name: "Jackie")
user3 = User.create(name: "Jenny")

recipe1 = Recipe.create(user: user1, title: "Potato Pie")
potato = Ingredient.create(name: "Potato")
tomato = Ingredient.create(name: "Tomato")
celery = Ingredient.create(name: "Celery")
onion = Ingredient.create(name: "Onion")
flour = Ingredient.create(name: "Flour")

ri1 = RecipeIngredient.create(recipe: recipe1, ingredient: potato)
allergy1 = Allergy.create(user: user1, ingredient: tomato)
allergy2 = Allergy.create(user: user2, ingredient: potato)
allergy4 = Allergy.create(user: user3, ingredient: potato)
allergy3 = Allergy.create(user: user2, ingredient: tomato)
allergy6 = Allergy.create(user: user3, ingredient: flour)
allergy5 = Allergy.create(user: user3, ingredient: tomato)