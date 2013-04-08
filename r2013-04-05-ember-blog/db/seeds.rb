Post.delete_all

Post.create(title: 'First post', author: 'Sean', body: 'This is my first post!', posted: (Date.current - 3.days))
Post.create(title: 'Second post', author: 'Sean', body: 'This is my second post!', posted: (Date.current - 2.days))
Post.create(title: 'Third post', author: 'Sean', body: 'This is my third post!', posted: Date.current)