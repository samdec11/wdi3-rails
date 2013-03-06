User.delete_all
Priority.delete_all
Task.delete_all

u1 = User.create(:name =>'Bob', :email => 'bob@gmail.com', :password => 'abc', :password_confirmation => 'abc')
u2 = User.create(:name =>'Cindy', :email => 'cindyloohoo@gmail.com', :password => 'abc', :password_confirmation => 'abc')
u3 = User.create(:name =>'Starkeesha', :email => 'x0xLiLbAbY69@juno.com', :password => 'abc', :password_confirmation => 'abc')

p1 = Priority.create(:name => 'high', :color => 'red', :value => 3)
p2 = Priority.create(:name => 'medium', :color => 'yellow', :value => 2)
p3 = Priority.create(:name => 'low', :color => 'green', :value => 1)

t1 = Task.create(:title => 'Dishes', :description => 'Wash them because they are dirty.', :duedate => '2013-03-01', :is_complete => true, :address => '620 W 172nd St, New York, NY')
t2 = Task.create(:title => 'Groceries', :description => 'Buy them because we have no food.', :duedate => '2013-02-28', :address => '205 Riverdale Rd, Liverpool, NY' )
t3 = Task.create(:title => 'Kids', :description => 'Pick them up from school at some point. They are probably cold and hungry.', :duedate => '2013-03-02', :address => '10 E 21st St, New York, NY')

u1.priorities << p1 << p2 << p3

u1.tasks = [t1, t2, t3]
t1.save
t2.priority = p1
t2.save
t3.priority = p3
t3.save