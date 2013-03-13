User.delete_all
Stock.delete_all

u1 = User.create(:email => 'bob@gmail.com', :balance => '1000', :password => 'abc', :password_confirmation => 'abc')
u2 = User.create(:email => 'cindy@gmail.com', :balance => '1500', :password => 'abc', :password_confirmation => 'abc')
u3 = User.create(:email => 'ted@gmail.com', :balance => '500', :password => 'abc', :password_confirmation => 'abc')

s1 = Stock.create(:symbol => 'AAPL', :purchase_price => '432.73', :quantity => '5')
s2 = Stock.create(:symbol => 'GOOG', :purchase_price => '827.50', :quantity => '5')
s3 = Stock.create(:symbol => 'CMG', :purchase_price => '323.66', :quantity => '5')

u1.stocks << [s1, s2, s3]