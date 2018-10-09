require_relative 'default_renter_points'

class ChildrensPrice
  include DefaultRenterPonits

  def charge(days_rented)
    result = 1.5
    result += (days_rented - 3) * 1.5 if days_rented > 3
    result
  end
end
