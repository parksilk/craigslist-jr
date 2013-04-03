Category.create(:name => "Boats")
Category.create(:name => "Cars")
Category.create(:name => "Personals")
Category.create(:name => "TVs")

Post.create(:title => "Cool Boat One", :description =>"Awesome boat", 
  :price => '$315', :category_id =>1)
Post.create(:title => "Cool Boat two", :description =>"Cooler boat", 
  :price => '$315', :category_id =>1)
Post.create(:title => "Cool Boat three", :description =>"cooler boat", 
  :price => '$315', :category_id =>1)
Post.create(:title => "Ford Fiesta", :description =>"Reliable", 
  :price => '$30,000', :category_id =>2)
Post.create(:title => "Ferari", :description =>"Cooler car", 
  :price => '$300,000', :category_id =>2)
