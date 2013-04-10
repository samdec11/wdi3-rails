Planet.delete_all
Satellite.delete_all

p1 = Planet.create(name: 'Mercury', image: 'http://upload.wikimedia.org/wikipedia/commons/3/3f/Mercury_Globe-MESSENGER_mosaic_centered_at_0degN-0degE.jpg')
p2 = Planet.create(name: 'Venus', image: 'http://upload.wikimedia.org/wikipedia/commons/5/51/Venus-real.jpg')
p3 = Planet.create(name: 'Earth', image: 'http://upload.wikimedia.org/wikipedia/commons/9/97/The_Earth_seen_from_Apollo_17.jpg')
p4 = Planet.create(name: 'Mars', image: 'http://upload.wikimedia.org/wikipedia/commons/f/f7/Water_ice_clouds_hanging_above_Tharsis_PIA02653.jpg')
p5 = Planet.create(name: 'Jupiter', image: 'http://upload.wikimedia.org/wikipedia/commons/5/5a/Jupiter_by_Cassini-Huygens.jpg')

# distance and diameter in miles, period in Earth days

s1 = Satellite.create(name: 'The Moon', image: 'http://i.space.com/images/i/000/005/980/i02/moon-watching-night-100916-02.jpg?1294154541', distance: '238900', diameter: '2159.14', period: '30')
s2 = Satellite.create(name: 'Phobos', image: 'http://upload.wikimedia.org/wikipedia/commons/5/5c/Phobos_colour_2008.jpg', distance: '5826', diameter: '14', period: '0.3191')
s3 = Satellite.create(name: 'Deimos', image: 'http://www.seasky.org/solar-system/assets/images/deimos03_sk12.jpg', distance: '14573', diameter: '7.83', period: '1.26')
s4 = Satellite.create(name: 'Io', image: 'http://upload.wikimedia.org/wikipedia/commons/7/7b/Io_highest_resolution_true_color.jpg', distance: '262032', diameter: '2263', period: '1.8')
s5 = Satellite.create(name: 'Callisto', image: 'http://upload.wikimedia.org/wikipedia/commons/e/e9/Callisto.jpg', distance: '2995.01', diameter: '1178740', period: '16.7')

p3.satellites << s1
p4.satellites = [s2, s3]
p5.satellites = [s4, s5]