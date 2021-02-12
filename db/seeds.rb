# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Kitten.delete_all
Kitten.create(name: "kitten1", age: "2", cuteness: "low", softness: "low")
Kitten.create(name: "kitten2", age: "4", cuteness: "low", softness: "low")
Kitten.create(name: "kitten3", age: "1", cuteness: "medium", softness: "low")
Kitten.create(name: "kitten4", age: "6", cuteness: "low", softness: "high")
Kitten.create(name: "kitten5", age: "4", cuteness: "high", softness: "high")
Kitten.create(name: "kitten6", age: "2", cuteness: "medium", softness: "high")