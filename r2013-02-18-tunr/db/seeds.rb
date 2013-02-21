Album.delete_all
Artist.delete_all
Genre.delete_all
Mixtape.delete_all
Song.delete_all
User.delete_all

a1 = Album.create(:name =>'Thriller', :image => 'http://upload.wikimedia.org/wikipedia/en/thumb/5/51/Michaeljacksonthrilleralbum.jpg/220px-Michaeljacksonthrilleralbum.jpg')
a2 = Album.create(:name =>'I Am... Sasha Fierce', :image => 'http://yodale.org/wp-content/uploads/2013/02/beyonce-knowles-i-am-sasha-fierce.jpg')
a3 = Album.create(:name =>'100 Masterpieces of Classical Music', :image => 'http://content.answcdn.com/main/content/img/amg/classical_albums/cov200/cm100/m116/m11650p3wyg.jpg')


r1 = Artist.create(:name =>'Michael Jackson', :image => 'http://images4.fanpop.com/image/photos/19600000/Michael-Jackson-michael-jackson-19665848-1000-1280.jpg')
r2 = Artist.create(:name =>'Beyonce', :image => 'http://www.usmagazine.com/uploads/assets/celebrities/1868-beyonce-knowles/1250530413_beyonce_knowles_290x402.jpg')
r3 = Artist.create(:name =>'Beethoven', :image => 'http://lucare.com/immortal/media/composing1.gif')

g1 = Genre.create(:name =>'Classical')
g2 = Genre.create(:name =>'Rock')
g3 = Genre.create(:name =>'Pop')


m1 = Mixtape.create(:name =>'Relax')
m2 = Mixtape.create(:name =>'Dance')
m3 = Mixtape.create(:name =>'Shuffle')

s1 = Song.create(:name =>'Thriller')
s2 = Song.create(:name =>'Sweet Dreams')
s3 = Song.create(:name =>'Symphony No. 9')


u1 = User.create(:name =>'Sean', :image => 'http://a0.twimg.com/profile_images/2568121023/profile.jpg', :password => 'abc', :password_confirmation => 'abc')
u2 = User.create(:name =>'Jack', :image => 'http://onpurpose.uk.com/wp-content/uploads/2012/09/Vinay-Nair-profile-picture.jpg', :password => 'abc', :password_confirmation => 'abc', :balance => 100)
u3 = User.create(:name =>'Jill', :image => 'http://www.ilr.cornell.edu/creditInternships/profiles/images/Moriarty-profile-photo.JPG', :password => 'abc', :password_confirmation => 'abc', :balance => 50)
u3 = User.create(:name =>'Bob', :image => 'http://fe867b.medialib.glogster.com/media/92/92a0862b9fdfca48725ac9df17ea42ffd90f7bb1dcab4cac52b1f417feedd514/profile-20pic.jpg', :password => 'abc', :password_confirmation => 'abc', :balance => 25)
u1.is_admin = true
u1.save

r1.songs << s1
r2.songs << s2
r3.songs << s3

a1.songs << s1
a2.songs << s2
a3.songs << s3

g1.songs = [s3]

u1.mixtapes << m1 << m2
u3.mixtapes = [m3]

m1.songs << s3
m2.songs = [s1, s2]
m3.songs << s1

u1.albums = [a1, a2]