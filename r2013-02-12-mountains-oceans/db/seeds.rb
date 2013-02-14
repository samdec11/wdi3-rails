Ocean.delete_all
#Area = sq mi, Volume = cu mi, Depth = ft, Width = mi (without adjacent seas)
Ocean.create(:name => 'Atlantic', :image => 'http://upload.wikimedia.org/wikipedia/commons/4/47/Atlantic_Ocean_-_en.png', :area => '31_800_000', :volume => '77_640_000', :max_depth => '27_500', :max_width => '4_000')
Ocean.create(:name => 'Pacific', :image => 'http://upload.wikimedia.org/wikipedia/commons/f/f6/Pacific_Ocean_-_en.png', :area => '63_800_000', :volume => '149_225_736', :max_depth => '35_797', :max_width => '12_300 mi')
Ocean.create(:name => 'Indian', :image => 'http://upload.wikimedia.org/wikipedia/commons/d/d3/Indian_Ocean-CIA_WFB_Map.png', :area => '28_350_000', :volume => '70_086_000', :max_depth => '26_401', :max_width => '6_200')
Ocean.create(:name => 'Arctic', :image => 'http://www.kidsgeo.com/images/arctic-ocean.jpg', :area => '5_427_000', :volume => '4_498_364.22', :max_depth => '18_264.4', :max_width => '4_000')
Ocean.create(:name => 'Southern', :image => 'http://upload.wikimedia.org/wikipedia/commons/2/28/Location_Southern_Ocean.svg', :area => '8_478_800', :volume => '17_225_736.1 ', :max_depth => '23_737')