# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

mozzarella = Ingredient.create(name:"Mozzarella")
tomato = Ingredient.create(name:"Tomato")
pepperoni = Ingredient.create(name:"Pepperoni")
olives = Ingredient.create(name:"Olives")
onion = Ingredient.create(name:"Onion")
artichokes = Ingredient.create(name:"Artichokes")
mushrooms = Ingredient.create(name:"Mushrooms")
ham = Ingredient.create(name:"Ham")
shrimps = Ingredient.create(name:"Shrimps")
Crust.create(name:"Regular Crust", price:250)
Crust.create(name:"Thin Crust", price:125)
super_pepperoni = Recipe.create(name:"Super Pepperoni", price: 500)
all_meat = Recipe.create(name:"All Meats", price: 600)
vegetarian = Recipe.create(name:"Vegetarian", price: 400)
classic = Recipe.create(name:"Classic", price: 400)
joes = Recipe.create(name:"Joe's Favorite", price: 550)
the_one = Recipe.create(name:"The One", price: 650)

super_pepperoni.ingredients << mozzarella
super_pepperoni.ingredients << pepperoni
super_pepperoni.ingredients << ham
all_meat.ingredients << mozzarella
all_meat.ingredients << pepperoni
all_meat.ingredients << ham
all_meat.ingredients << shrimps
vegetarian.ingredients << tomato
vegetarian.ingredients << olives
vegetarian.ingredients << onion
vegetarian.ingredients << artichokes
classic.ingredients << mozzarella
classic.ingredients << ham
classic.ingredients << onion
classic.ingredients << mushrooms
joes.ingredients << mozzarella
joes.ingredients << ham
joes.ingredients << shrimps
joes.ingredients << onion
the_one.ingredients << mozzarella
the_one.ingredients << pepperoni
the_one.ingredients << shrimps
the_one.ingredients << tomato
the_one.ingredients << onion
the_one.ingredients << olives
