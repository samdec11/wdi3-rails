Book.delete_all
Ingredient.delete_all
Recipe.delete_all

b1 = Book.create(:title => 'Mastering the Art of French Cooking', :cuisine => 'French', :chef => 'Julia Child', :image => 'http://upload.wikimedia.org/wikipedia/en/e/e6/MasteringTheArtOfFrenchCooking1edCover.jpg')

r1 = Recipe.create(:name => 'Boeuf bourguignon', :course => 'Main', :cooktime => '130', :servingsize => '5', :instructions => 'Braise beef in red wine. Eat it up.', :image => 'http://upload.wikimedia.org/wikipedia/commons/5/53/Boeuf_bourguignon_servi_avec_des_p%C3%A2tes.jpg')
r2 = Recipe.create(:name => 'Bouillabaisse', :course => 'First', :cooktime => '60', :servingsize => '4', :instructions => 'Stew some fish. Eat it up.', :image => 'http://upload.wikimedia.org/wikipedia/commons/2/24/Bullabessa.jpg')
r3 = Recipe.create(:name => 'Cassoulet', :course => 'Main', :cooktime => '40', :servingsize => '8', :instructions => 'Slow cook that casserole. Eat it up.', :image => 'http://upload.wikimedia.org/wikipedia/en/f/f7/Cassoulet_in_Crochette.jpg')


i1 = Ingredient.create(:name => 'Beef', :measurement => '3 lb', :cost => '12', :image => 'http://www.teacher-chef.com/wp-content/uploads/2012/05/4-27-crop-corned-beef1.jpg')
i2 = Ingredient.create(:name => 'Butter', :measurement => '1 lb', :cost => '3', :image => 'http://wellnessfx.files.wordpress.com/2012/09/butter.jpg')
i3 = Ingredient.create(:name => 'Fish', :measurement => '2 lb', :cost => '8', :image => 'http://www.pixotosh.com/wp-content/uploads/2012/09/nemo-1024x768.jpg')
i4 = Ingredient.create(:name => 'Cheese', :measurement => '5 cups', :cost => '10', :image => 'http://upload.wikimedia.org/wikipedia/commons/8/89/Swiss_cheese_cubes.jpg')
i5 = Ingredient.create(:name => 'Potatoes', :measurement => '8 pounds', :cost => '4', :image => 'http://1.bp.blogspot.com/-mr9Zhfr3sIw/T4tSH-hEEzI/AAAAAAAAAJQ/mOdHjXNvLuQ/s1600/potatoes.jpg')
i6 = Ingredient.create(:name => 'Red wine', :measurement => '10 gallons', :cost => '300', :image => 'http://www.food4feed.com/wp-content/uploads/2012/11/red_wines.jpg')

b1.recipes = [r1, r2, r3]

r1.ingredients = [i1, i6, i5]
r2.ingredients = [i2, i3, i5]
r3.ingredients = [i2, i4, i5]