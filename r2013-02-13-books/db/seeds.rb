Author.delete_all
Book.delete_all

Author.create(:name => 'Stephen King', :dob => 'September 21, 1947', :place_of_birth => 'Portland, ME, USA', :dod => '', :place_of_death => '', :image => 'http://upload.wikimedia.org/wikipedia/commons/e/e3/Stephen_King%2C_Comicon.jpg')
Author.create(:name => 'J. K. Rowling', :dob => '31 July 1965', :place_of_birth => 'Yate, Gloucestershire, England, UK', :dod => '', :place_of_death => '', :image => 'http://upload.wikimedia.org/wikipedia/commons/5/5d/J._K._Rowling_2010.jpg')
Author.create(:name => 'George Orwell', :dob => '25 June 1903', :place_of_birth => 'Motihari, Bihar, India', :dod => '21 January 1950', :place_of_death => 'London, England, UK', :image => 'http://upload.wikimedia.org/wikipedia/commons/7/7e/George_Orwell_press_photo.jpg')
Author.create(:name => 'Gabriel Garcia Marquez', :dob => 'March 6, 1927', :place_of_birth => 'Aracataca, Colombia', :dod => '', :place_of_death => '', :image => 'http://upload.wikimedia.org/wikipedia/commons/0/0f/Gabriel_Garcia_Marquez.jpg')
Author.create(:name => 'Harriet Beecher Stowe', :dob => 'June 14, 1811', :place_of_birth => 'Litchfield, CT, USA', :dod => 'July 1, 1896', :place_of_death => 'Hartford, CT, USA', :image => 'http://upload.wikimedia.org/wikipedia/commons/7/7b/Beecher-Stowe.jpg')

Book.create(:title => 'The Shining', :year => '1977', :genre => 'Horror', :image => 'http://upload.wikimedia.org/wikipedia/en/4/4c/Shiningnovel.jpg')
Book.create(:title => 'Harry Potter and the Deathly Hallows', :year => '2007', :genre => 'Fantasy', :image => 'http://images1.wikia.nocookie.net/__cb20070927074349/harrypotter/images/1/15/Hp7.jpg')
Book.create(:title => '1984', :year => '1949', :genre => 'Dystopian', :image => 'http://www.penguin.com.au/jpg-large/9780141036144.jpg')
Book.create(:title => 'One Hundred Years of Solitude', :year => '1967', :genre => 'Magic realism', :image => 'http://upload.wikimedia.org/wikipedia/en/9/9d/100years.jpg')
Book.create(:title => 'Uncle Toms Cabin' , :year => '1852', :genre => 'Novel', :image => 'http://upload.wikimedia.org/wikipedia/commons/3/31/UncleTomsCabinCover.jpg')