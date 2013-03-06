Album.delete_all
Artist.delete_all
Genre.delete_all
Mixtape.delete_all
Song.delete_all
User.delete_all

a1 = Album.create(:name =>'Thriller', :image => 'http://upload.wikimedia.org/wikipedia/en/thumb/5/51/Michaeljacksonthrilleralbum.jpg/220px-Michaeljacksonthrilleralbum.jpg')
a2 = Album.create(:name =>'I Am... Sasha Fierce', :image => 'http://www.beyonceonline.com/sites/beyonce/files/imagecache/340x340/albums/iam_std_frontcover_0.jpg')
a3 = Album.create(:name =>'Details', :image => 'http://upload.wikimedia.org/wikipedia/en/f/f7/Detailsfrou.jpg')
a4 = Album.create(:name =>'4', :image =>'http://upload.wikimedia.org/wikipedia/en/c/c8/4_album_-_Beyonce.jpg')
a5 = Album.create(:name =>'Diva', :image =>'http://upload.wikimedia.org/wikipedia/en/8/89/Annie_Lennox_-_Diva_Album_Cover.jpg')
a6 = Album.create(:name =>"I'm Your Baby Tonight", :image =>'http://upload.wikimedia.org/wikipedia/en/a/a3/Whitney_Houston_I%27m_Your_Baby_Tonight_Cover.jpg')
a7 = Album.create(:name =>'Loud', :image =>'http://upload.wikimedia.org/wikipedia/en/4/4c/Loud_-_Rihanna.jpg')

r1 = Artist.create(:name =>'Michael Jackson', :image => 'http://images4.fanpop.com/image/photos/19600000/Michael-Jackson-michael-jackson-19665848-1000-1280.jpg')
r2 = Artist.create(:name =>'Beyonce', :image => 'http://www.usmagazine.com/uploads/assets/celebrities/1868-beyonce-knowles/1250530413_beyonce_knowles_290x402.jpg')
r3 = Artist.create(:name =>'Frou Frou', :image => 'http://www.alwaysontherun.net/froufrou6.jpg')
r4 = Artist.create(:name =>'Annie Lennox', :image => 'http://www.biography.com/imported/images/Biography/Images/Profiles/L/Annie-Lennox-9542541-1-402.jpg')
r5 = Artist.create(:name =>'Rihanna', :image => 'http://images5.fanpop.com/image/photos/31700000/rihanna-tenderness-rihanna-31729608-1280-960.jpg')
r6 = Artist.create(:name =>'Whitney Houston', :image => 'http://cdn.cnwimg.com/wp-content/uploads/2012/02/Whitney-Houston-Dies-At-48.jpg')

g1 = Genre.create(:name =>'Downtempo')
g2 = Genre.create(:name =>'Rock')
g3 = Genre.create(:name =>'Pop')
g4 = Genre.create(:name =>'Alternative')
g5 = Genre.create(:name =>'Country')
g6 = Genre.create(:name =>'Dance')
g7 = Genre.create(:name =>'Electronic')
g8 = Genre.create(:name =>'R&B')
g9 = Genre.create(:name =>'Rap')

m1 = Mixtape.create(:name =>'Relax')
m2 = Mixtape.create(:name =>'Dance')
m3 = Mixtape.create(:name =>'Shuffle')

s1 = Song.create(:name =>'Thriller', :filename =>'ZEHsIcsjtdI')
s2 = Song.create(:name =>'Beat It', :filename=>'rScqTO-zZVs')
s3 = Song.create(:name=>'The Girl is Mine', :filename=>'rHp0s2wKajw')
s4 = Song.create(:name=>'Billie Jean', :filename=>'75sx7U6dAB4')
s5 = Song.create(:name=>"Wanna Be Startin' Somethin'", :filename=>'NtPDaxHhM6I')
s6 = Song.create(:name =>'Sweet Dreams', :filename =>'FtlwvAkkz-U')
s7 = Song.create(:name=>'Single Ladies (Put a Ring on It)', :filename=>'4m1EFMoRFvY')
s8 = Song.create(:name=>'Diva', :filename=>'KOQh4ut11N0')
s9 = Song.create(:name=>'Video Phone', :filename=>'rAvu0x4hBzU')
s10 = Song.create(:name=>'Radio', :filename=>'64AMyOlkgPU')
s11 = Song.create(:name =>'Let Go', :filename =>'r3Cg1wxgX6M')
s12 = Song.create(:name=>'Must Be Dreaming', :filename=>'gZ679GmrruQ')
s13 = Song.create(:name=>'Breathe In', :filename=>'D1M-lbxUOgE')
s14 = Song.create(:name=>"It's Good to Be in Love", :filename=>'ClwyEx_aKQQ')
s15 = Song.create(:name=>'Psychobabble', :filename=>'5j5xMRPjDcw')
s16 = Song.create(:name =>'Countdown', :filename =>'7_y3MdOxtL0')
s17 = Song.create(:name=>'Run the World (Girls)', :filename=>'N8t078YDojM')
s18 = Song.create(:name=>'Best Thing I Never Had', :filename=>'WwMsWjrlu54')
s19 = Song.create(:name=>'Love On Top', :filename=>'gPaD513xWOY')
s20 = Song.create(:name=>'End of Time', :filename=>'Ke2yoLWtylc')
s21 = Song.create(:name =>'Walking on Broken Glass', :filename =>'mhjd__NtHo4')
s22 = Song.create(:name=>'Why', :filename=>'Zh3WljFZVvk')
s23 = Song.create(:name=>'Precious', :filename=>'A5ORn5MT0cg')
s24 = Song.create(:name=>'Cold', :filename=>'aRdTh_u0rag')
s25 = Song.create(:name=>'Little Bird', :filename=>'C-xfCbgtZnc')
s26 = Song.create(:name =>"I'm Your Baby Tonight", :filename =>'g-1xMN6fDmw')
s27 = Song.create(:name=>'I Belong to You', :filename=>'WeukYMhphuU')
s28 = Song.create(:name=>'All the Man That I Need', :filename=>'TzZPBR3x2cQ')
s29 = Song.create(:name=>'Miracle', :filename=>'41zgDK2w70o')
s30 = Song.create(:name=>'My Name Is Not Susan', :filename=>'PdoamCoYTs0')
s31 = Song.create(:name =>'S&M', :filename =>'dlEdFJpQ8-c')
s32 = Song.create(:name=>'Only Girl (in the World)', :filename=>'3SUvDWxYb8w')
s33 = Song.create(:name=>"What's My Name?", :filename=>'_BqUq-NqtJw')
s34 = Song.create(:name=>'Cheers (Drink to That)', :filename=>'BZNF68ZT6o4')
s35 = Song.create(:name=>'Man Down', :filename=>'JHzftGgZtdU')



u1 = User.create(:name =>'Sean', :image => 'http://a0.twimg.com/profile_images/2568121023/profile.jpg', :password => 'abc', :password_confirmation => 'abc')
u2 = User.create(:name =>'Jack', :image => 'http://onpurpose.uk.com/wp-content/uploads/2012/09/Vinay-Nair-profile-picture.jpg', :password => 'abc', :password_confirmation => 'abc', :balance => 100)
u3 = User.create(:name =>'Jill', :image => 'http://www.ilr.cornell.edu/creditInternships/profiles/images/Moriarty-profile-photo.JPG', :password => 'abc', :password_confirmation => 'abc', :balance => 50)
u4 = User.create(:name =>'Bob', :image => 'http://fe867b.medialib.glogster.com/media/92/92a0862b9fdfca48725ac9df17ea42ffd90f7bb1dcab4cac52b1f417feedd514/profile-20pic.jpg', :password => 'abc', :password_confirmation => 'abc', :balance => 25)
u1.is_admin = true
u1.save

a1.songs = [s1, s2, s3, s4, s5] #Thriller
a2.songs = [s6, s7, s8, s9, s10] #Fierce
a3.songs = [s11, s12, s13, s14, s15] #Details
a4.songs = [s16, s17, s18, s19, s20] #4
a5.songs = [s21, s22, s23, s24, s25] #Diva
a6.songs = [s26, s27, s28, s29, s30] #I'm Your Baby
a7.songs = [s31, s32, s33, s34, s35] #Loud

g1.songs = [s11, s12, s13, s14, s15] #Downtempo
g3.songs = [s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s16, s17, s18, s19, s20, s26, s27, s28, s29, s30] #Pop
g4.songs = [s21, s22, s23, s24, s25] #Alternative
g6.songs = [s31, s32, s33, s34, s35] #Dance

r1.albums << a1
r2.albums << a2 << a4
r3.albums << a3
r4.albums << a5
r5.albums << a7
r6.albums << a6

m1.user = u2
m1.save
m2.user = u3
m2.save
m3.user = u4
m3.save

m1.songs = [s11, s23]
m2.songs = [s5, s7, s31]
m3.songs = [s1, s17, s34]
