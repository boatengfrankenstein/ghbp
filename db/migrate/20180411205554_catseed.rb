class Catseed < ActiveRecord::Migration[5.1]
  def change
  end

 Category.create(name:"Books")
Category.create(name:"Musical Instruments")
Category.create(name:"Auto Parts")
Category.create(name:"Cars and Trucks")
Category.create(name:"Lost and found")
Category.create(name:"Events")
Category.create(name:"Pets")

end
