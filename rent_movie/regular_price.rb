require_relative 'default_renter_points'

class RegularPrice
  include DefaultRenterPonits

  def charge(days_rented)
    result = 2
    result += (days_rented - 2) * 1.5 if days_rented > 2
    result
  end
end
