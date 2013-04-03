Song.delete_all
Artist.delete_all
Album.delete_all

#album :name, :image
#artist :name
#song :name, :position, :filename

a1 = Artist.create(name: 'Justin Timberlake')
a2 = Artist.create(name: 'Rihanna')
a3 = Artist.create(name: 'Smith Westerns')

b1 = Album.create(name: 'The 20/20 Experience', image: '2020.jpg')
b2 = Album.create(name: 'Music of the Sun', image: 'mots.jpg')
b3 = Album.create(name: 'Dye It Blonde', image: 'dib.jpg')

s1 = Song.create(name: 'Pusher Love Girl', position: 1, filename: '01pusherlovegirl.mp3')
s2 = Song.create(name: 'Suit & Tie', position: 2, filename: '02suitandtie.mp3')
s3 = Song.create(name: "Don't Hold the Wall", position: 3, filename: "03dontholdthewall.mp3")
s4 = Song.create(name: 'Strawberry Bubblegum', position: 4, filename: '04strawberrybubblegum.mp3')
s5 = Song.create(name: 'Tunnel Vision', position: 5, filename: '05tunnelvision.mp3')
s6 = Song.create(name: 'Spaceship Coupe', position: 6, filename: '06spaceshipcoupe.mp3')
s7 = Song.create(name: 'That Girl', position: 7, filename: '07thatgirl.mp3')
s8 = Song.create(name: 'Let the Groove Get in', position: 8, filename: '08letthegroovegetin.mp3')
s9 = Song.create(name: 'Mirrors', position: 9, filename: '09mirrors.mp3')
s10 = Song.create(name: 'Blue Ocean Floor', position: 10, filename: '10blueoceanfloor.mp3')
s11 = Song.create(name: 'Dress On', position: 11, filename: '11dresson.mp3')
s12 = Song.create(name: 'Body Count', position: 12, filename: '12bodycount.mp3')
s13 = Song.create(name: 'Pon de Replay', position: 1, filename: '01pondereplay.m4p')
s14 = Song.create(name: 'Weekend', position: 1, filename: '01weekend.m4a')

a1.albums << b1
b1.songs = [s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12]

a2.albums << b2
b2.songs << s13

a3.albums << b3
b3.songs << s14