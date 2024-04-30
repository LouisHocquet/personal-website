# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


p "Creating Expertises ..."
p "---------------------"
# Creating expertises
if  Expertise.where(name: "Product Management").empty?
  expertise = Expertise.new(
    name: "Product Management",
    fontawesome: "fa-solid fa-rocket"
  )
  expertise.save!
  p "Create #{expertise.name}"
end

if  Expertise.where(name: "Développement Web").empty?
  expertise = Expertise.new(
    name: "Développement Web",
    fontawesome: "fa-solid fa-code"
  )
  expertise.save!
  p "Create #{expertise.name}"
end

if  Expertise.where(name: "Design Web").empty?
  expertise = Expertise.new(
    name: "Design Web",
    fontawesome: "fa-solid fa-wand-magic-sparkles"
  )
  expertise.save!
  p "Create #{expertise.name}"
end

p "Seeds finished !"
