# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
User.destroy_all

puts "creating Users"

users = 
    [
    {name: "Coral", username: "coral_fussman", password: "c12345", img_url: "https://i.pinimg.com/originals/a2/b6/78/a2b678da0f232e52d7fa24a58b61b5c7.jpg"},
    {name: "Ramon", username: "dark_laughter", password: "e12345", img_url: "https://cdn1.edgedatg.com/aws/v2/abc/TheMuppets/person/909427/02f2946ac097b11d39012ced9ba75e50/320x180-Q90_02f2946ac097b11d39012ced9ba75e50.jpg" },
    {name: "Ian", username: "ian_is_goat", password: "i12345", img_url: "https://ca.slack-edge.com/T02MD9XTF-UKLTXS2LU-93c15b2245eb-512"},
    {name: "Greg", username: "super_duper_g", password: "beautiful", img_url:"https://ca.slack-edge.com/T02MD9XTF-U8H2RA3C1-643c8ce562ef-512"},
    {name: "Matt", username: "vaporwave", password: "m12345" , img_url: "https://ca.slack-edge.com/T02MD9XTF-UFLH3KMEV-361ad28cf909-512"}
    ]
    users.each do |user|
        User.create(user)
      end 

Meal.destroy_all

puts "creating meals"

meals = [
    {
    img_url: "https://sofreshnsogreen.com/wp-content/uploads/2017/02/DSC_0342-378x378.jpg",
    name: "Avocado Toast", 
    cuisine: "Australian", 
    description: "Popular brunch dish, beautiful and nutritious! Sub GF toast if desired and throw that on the gram!" , 
    ingredient: "Salt Pepper, Sliced Bread, Garlic, Olive Oil or Unsalted Butter, Crushed Red Pepper Flakes-optional",
    diet: ["none", "vegetarian", "vegan", "kosher", "halal", "gluten free"]
    },

    {
    img_url: "https://cdn.shopify.com/s/files/1/0012/0605/9079/articles/Maca-Granola-Web.jpeg?v=1547251218",
    name: "Homemade Muesli", 
    cuisine: "German", 
    description: "Homemade muesli is essentially a homemade breakfast cereal, also great over your favorite yogurt", 
    ingredient: "Dried tart cherries,Rolled oats, Unsweetened large Coconut Flakes, Pecan pieces, Pure maple syrup, Vanilla extract, Cinnamon, Nutmeg, Non-dairy milk or 2% milk",
    diet: ["none", "vegetarian", "vegan","kosher", "halal", "gluten free"]
    },

    {
    img_url: "https://photos.bigoven.com/recipe/hero/frittata-53d6ff.jpg?h=300&w=300",
    name: "Frittata", 
    cuisine: "Italian", 
    description: "Some where between a scrambled omlette and a Quiche, these eggs are easy to whip up", 
    ingredient: "Eggs, Tomatoes, Pepper, Mushrooms, Mozzerella",
    diet: ["none", "vegetarian","kosher", "halal", "gluten free"]
    },

    {
    img_url: "https://becksliveshealthy.com/wp-content/uploads/2018/05/French-Toast-3-1-404x404.jpg",
    name: "French Toast", 
    cuisine: "American", 
    description: "Satisfying your sweet tooth first thing in the morning" , 
    ingredient: "Bread, Cinnamon, Sugar, Butter, Eggs, Milk, Vanilla Extract, Maple Syrup",
    diet: ["none", "vegetarian", "vegan","kosher", "halal"]
    },

    {
    img_url: "https://nitrocdn.com/wNaVTMyblCPjzAPXbeDDfFKcpvICVOVU/assets/static/optimized/rev-cfee412/wp-content/uploads/2017/10/the-best-huevos-ranchero-recipe-16-256x256.jpg",
    name: "Huevos Rancheros", 
    cuisine: "Mexican", 
    description: "Dish consisting of eggs served in the style of traditional rural Mexican farms", 
    ingredient: "Tomatoes, Onion, Jalapeno, Garlic, Hot sauce, Cumin Powder, Kosher salt, Ground pepper, Extra-virgin olive oil, Black beans, Eggs, Corn tortillas, Feta cheese, Fresh cilantro",
    diet: ["none", "vegetarian","kosher", "halal", "gluten free"]
    },

    {
    img_url: "https://i.pinimg.com/564x/e9/02/e8/e902e8290e0b8d4d5c6df8ac71242b8c.jpg",
    name: "PB & Oats", 
    cuisine: "American", 
    description: "Nostalgic twist on classic oatmeal", 
    ingredient: "Coconut oil, Old Fashioned rolled oats, Kosher salt, Cinnamon, Water, All natural peanut butter or Nut butter, All Natural Strawberry Jam",
    diet: ["none", "vegetarian", "vegan","kosher", "halal", "gluten free"] 
    },

    {
    img_url: "https://bigoven-res.cloudinary.com/image/upload/d_recipe-no-image.jpg,t_recipe-256/15-minute-mediterranean-chickpea-salad-049c4001947c20970ca5e9a7.jpg",
    name: "Chickpea Salad", 
    cuisine: "Israeli", 
    description:  "Fresh & flavorful ",
    ingredient: "Chickpeas, Bell Pepper, Cucumber, Olive Oil, Red Wine Vinegar, Salt, Pepper, Smoked Paprika, Celery Seed optional, Herbs(Parsley, Dill, Basil) optional",
    diet: ["none", "vegetarian", "vegan","kosher", "halal", "gluten free"]  
     },

     {
    img_url:  "https://bigoven-res.cloudinary.com/image/upload/d_recipe-no-image.jpg,t_recipe-480/baked-chicken-parmesan-24.jpg  ",
    name:  "Chicken Parmesan ", 
    cuisine: "Italian", 
    description:  "Italian", 
    ingredient:  "Boneless Chicken Breast, Eggs, Salt, Pepper, Bread  Crumbs, Flour, Olive Oil, Tomato sauce, Mozzarella, Basil, Provolone, Parmesan Cheese ",
    diet: ["none","halal"]
    },


    {
    img_url: "https://bigoven-res.cloudinary.com/image/upload/t_recipe-256/vegetable-chow-fun-1766090.jpg", 
    name:  "Veggie Chow Fun ", 
    cuisine:  "Chinese ", 
    description:  "Oriental dish, guaranteed to satisfy any craving, with notes of sweet & savory", 
    ingredient:  "Chicken, Rice Wine, Soy sauce, White pepper, Dark Soy Sauce, Light Soy Sauce, Chili in Oil optional, Sugar, Rice Wine, Ginger, Garlic, Red Chili or Red Bell Pepper, Shiitake mushrooms, Chow Fun Noodle (rice), Green Onion, Bean Sprouts, Sesame Oil, Sesame Seeds ",
    diet: ["none", "vegetarian","kosher", "halal"], 
    },

    {
    img_url: "https://ohsheglows.com/gs_images/2016/01/20160120-App-Snacks-00343-256x256.jpghttps://nitrocdn.com/wNaVTMyblCPjzAPXbeDDfFKcpvICVOVU/assets/static/optimized/rev-cfee412/wp-content/uploads/2014/12/pulled-pork-nachos-6.jpg",
    name: "Ultimate Vegan Chili" , 
    cuisine: "American", 
    description: "Hearty bowl of goodness", 
    ingredient: "Diced Tomatoes, Carrot, Parsley (leaves and stems), Vegan Worcestershire sauce, Adobo Sauce, Yellow Onion, Green Bell Pepper, Olive Oil, Crushed Tomatoes, Pinto Beans, Black Beans, Dry Quinoa, Chili Powder, Garlic Powder, Onion Powder, Cumin Powder, Oregano Powder, Salt, Black Pepper, Pickled Jalapenos or Pickled Onions, Vegan Sour Cream, Lime Wedges, Sliced Radishes",
    diet: ["none", "vegetarian", "vegan","kosher", "halal", "gluten free"] 
    },

    {
    img_url: "https://photos.bigoven.com/recipe/hero/classic-meatloaf-18.jpg?h=256&w=256",
    name: "Classic Meatloaf", 
    cuisine: "German", 
    description: "Just like mom use to make", 
    ingredient: "Ground Beef, Bread Crumbs, Yellow Onion, Eggs, Ketchup, Worcestershire sauce, dried parsley leaves, Salt, garlic powder, ground black pepper, light brown sugar, red wine vinegar",
    diet: ["none", "vegetarian", "vegan","kosher", "halal", "gluten free"]  
    },

    {
    img_url:"https://i.pinimg.com/474x/5f/0d/fb/5f0dfb779bcdd9bd3acea1c5132b4eb2.jpg" ,
    name: "Bok Choy Stir Fry", 
    cuisine: "Japanese", 
    description: "Work with a Wok, or break out a pan and saute those veggies", 
    ingredient: "Bok Choy, Garlic, Salt, Green Onion, Carrots, Ginger, Scallions, Yellow",
    diet: ["none"] 
   },

    {
      img_url: "https://photos.bigoven.com/recipe/hero/cauliflower-buffalo-bites-5.jpg?h=500&w=500",
    name: "Cauli-Buffalo Wings", 
    cuisine: "American", 
    description: "A healthy alternative to the classic Football Sunday Staple", 
    ingredient: "Cauliflower chopped, Bread Crumbs,Your go to hot sauce ",
    diet: ["none", "vegetarian", "vegan","kosher", "halal", "gluten free"]
    },

    {
    img_url: "https://photos.bigoven.com/recipe/hero/sweet-potato-skins.jpg?h=500&w=500",
    name: "Potato Skins", 
    cuisine: "American", 
    description: "Grabbing a Cold One" , 
    ingredient: "Potatoes, Extra virgin olive oil, Kosher salt, Ground pepper, bacon, Cheddar cheese, Sour cream, Green onions,",
    diet: ["none", "gluten free"]
    },

    {
    img_url: "https://nitrocdn.com/wNaVTMyblCPjzAPXbeDDfFKcpvICVOVU/assets/static/optimized/rev-cfee412/wp-content/uploads/2014/12/pulled-pork-nachos-6.jpg",
    name: "Nachos Supreme", 
    cuisine: "Mexican", 
    description: "The ultimate snack for when you’re kicking back and unwinding",
    ingredient: "Olive Oil, Onion, Garlic, Taco Seasoning, Salt, Refried Beans, Tortilla Chips, Cheddar, Monterrey Jack, Black Beans, Jalapenos, Tomatoes, Avocado, Green onions, Cilantro, Sour Cream, Hot sauce",
    diet: ["none", "vegetarian","kosher", "halal", "gluten free"] 
    },

    {
    img_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQiobGb9eMyQxXUNqvwtukjHQXyr6cpFBe2Jg5eUPUgDeGUxYc0&usqp=CAU",
    name: "Falafel", 
    cuisine: "Israeli", 
    description: "Chickpea delights", 
    ingredient: "chickpeas, tahini, cilantro, olive oil",
    diet: ["none", "vegetarian", "vegan","kosher", "halal", "gluten free"] 
   },

   {
    img_url: "https://lipsmackingfood.com/wp-content/uploads/2014/10/img_2118.jpg",
    name: "Tempura Green Tea Ice Cream", 
    cuisine: "Japanese", 
    description: "Fried Goodness", 
    ingredient: "Green tea ice-cream, Pound cake, Flour, Eggs, Oil",
    diet: ["none", "vegetarian","kosher", "halal", "gluten free"] 
    },
  {
    img_url:"https://ipcdn.freshop.com/resize?url=https://images.freshop.com/1898839904717112094/3071cd7af99ac7fa9cb7d58fcf5e1ff4_large.png&width=256&type=webp&quality=40" ,
    name: "Chocolate Avocado Brownies", 
    cuisine: "Australian", 
    description: "Decadent fix, falling squarely on the fudgy side.", 
    ingredient: "Avocadoes, Golden agave, Coconut oil, Eggs, Vanilla extract, Unsweetened cocoa powder, Teaspoon salt, Whole wheat, All-purpose flour, Mini chocolate chips",
    diet: ["none", "vegetarian","kosher", "halal"] 
  }]

    meals.each do |meal|
        Meal.create(meal)
    end 

    Comment.destroy_all
    puts "creating comments"
    50.times do
      Comment.create(content: Faker::Hipster.paragraph, meal_id: Meal.all.sample.id, user_id: User.all.sample.id)
    end


    Rating.destroy_all
    puts "creating ratings"
    50.times do
      Rating.create(rating: rand(1..5), meal_id: Meal.all.sample.id, user_id: User.all.sample.id  )
    end


