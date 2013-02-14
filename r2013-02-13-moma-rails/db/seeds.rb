Artist.delete_all
Artist.create(:name => 'Vincent van Gogh', :nationality => 'Dutch', :dob => 'March 30 1853', :period => 'Post-Impressionist', :image => 'http://upload.wikimedia.org/wikipedia/commons/a/a8/Van_Gogh_Self-Portrait_with_Straw_Hat_1887-Metropolitan.jpg')
Artist.create(:name => 'Claude Monet', :nationality => 'French', :dob => 'Novermber 14 1840', :period => 'Impressionist', :image => 'http://upload.wikimedia.org/wikipedia/commons/a/a4/Claude_Monet_1899_Nadar_crop.jpg')
Artist.create(:name => 'Salvador Dali', :nationality => 'Spanish', :dob => 'March 11 1904', :period => 'Surrealist', :image => 'http://upload.wikimedia.org/wikipedia/commons/2/24/Salvador_Dal%C3%AD_1939.jpg')
Artist.create(:name => 'Rembrandt', :nationality => 'Dutch', :dob => 'July 15 1606', :period => 'Dutch Golden Age', :image => 'http://upload.wikimedia.org/wikipedia/commons/b/bd/Rembrandt_van_Rijn_-_Self-Portrait_-_Google_Art_Project.jpg')
Artist.create(:name => 'Pablo Picasso', :nationality => 'Spanish', :dob => 'October 25 1881', :period => 'Modernist', :image => 'http://upload.wikimedia.org/wikipedia/commons/9/98/Pablo_picasso_1.jpg')

Painting.delete_all
Painting.create(:title => 'Starry Night', :year => '1889', :medium => 'Oil', :style => 'Post-Impressionist', :image => 'http://upload.wikimedia.org/wikipedia/commons/e/ea/Van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg')
Painting.create(:title => 'Guernica', :year => '1937', :medium => 'Oil', :style => 'Cubist', :image => 'http://upload.wikimedia.org/wikipedia/en/7/74/PicassoGuernica.jpg')
Painting.create(:title => 'The Persistence of Memory', :year => '1931', :medium => 'Oil', :style => 'Surrealist', :image => 'http://upload.wikimedia.org/wikipedia/en/d/dd/The_Persistence_of_Memory.jpg')
Painting.create(:title => 'The Storm on the Sea of Galilee', :year => '1633', :medium => 'Oil', :style => 'Baroque', :image => 'http://upload.wikimedia.org/wikipedia/commons/f/f3/Rembrandt_Christ_in_the_Storm_on_the_Lake_of_Galilee.jpg')
Painting.create(:title => 'The Magpie', :year => '1868', :medium => 'Oil', :style => 'Impressionist', :image => 'http://upload.wikimedia.org/wikipedia/commons/e/ec/Monet_-_The_Magpie.jpg')