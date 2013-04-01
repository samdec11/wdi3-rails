User.delete_all
Tag.delete_all
Product.delete_all

u1 = User.create(email: 'samdec11+bob@gmail.com', password: 'a', password_confirmation: 'a', balance: 500)
u2 = User.create(email: 'samdec11+admin@gmail.com', password: 'a', password_confirmation: 'a', is_admin: true)