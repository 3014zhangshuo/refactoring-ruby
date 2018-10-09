Dir["#{File.dirname(__FILE__)}/rent_movie/*.rb"].each { |file| require file }

require 'test/unit'

class RentMovieTest < Test::Unit::TestCase
  test 'movie price of rent 3 days' do
    movie = Movie.new("无双", Movie::NEW_RELEASE)
    assert_equal movie.charge(3), 9
  end

  test 'movie renter points of rent 3 days' do
    movie = Movie.new("无双", Movie::NEW_RELEASE)
    assert_equal movie.frequent_renter_points(3), 2
  end
end
