Dir["#{File.dirname(__FILE__)}/rent_movie/*.rb"].each { |file| require file }

movie = Movie.new("无双", Movie::NEW_RELEASE)

puts movie.charge(3)
puts movie.frequent_renter_points(3)
