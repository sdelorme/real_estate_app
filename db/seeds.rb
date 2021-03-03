# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
  homes = Home.create({
  description: "Such a good house",  
  year_built: "1999", 
  square_feet: 50, 
  bedrooms: 2,
  bathrooms: 2.5,  
  floors: 2,  
  availability: true,
  address: "Salisbury, Vermont, United States", 
  price: 3333
  })
