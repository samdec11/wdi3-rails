User.delete_all
Exercise.delete_all

u1 = User.create(:name => 'Bob', :email => 'bob@gmail.com', :password => 'abc', :password_confirmation => 'abc')
u2 = User.create(:name => 'Lily', :email => 'lily@gmail.com', :password => 'abc', :password_confirmation => 'abc')
u3 = User.create(:name => 'Craig', :email => 'craig@gmail.com', :password => 'abc', :password_confirmation => 'abc')

e1 = Exercise.create(:activity => 'run', :value => 5, :unit => 'miles', :completed => '2013-03-07')
e2 = Exercise.create(:activity => 'swim', :value => 15, :unit => 'laps', :completed => '2013-03-06')
e3 = Exercise.create(:activity => 'bike', :value => 20, :unit => 'miles', :completed => '2013-03-05')

u1.exercises = [e1, e2, e3]