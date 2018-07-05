# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def create_products
  products = SmarterCSV.process("#{Rails.public_path}/products.csv", {key_mapping: {name: :name ,orignalsku: :orig , barcode: :Barcode}})
  products.each do |p|
    ProductPrice.create(name: p[:name], orignalsku: p[:orig] , barcode: p[:Barcode] )
  end
  p "Products added to database"
end

create_products