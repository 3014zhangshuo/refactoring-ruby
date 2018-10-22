# Example: No Local Variables

def print_owing(previous_amount)
  outstanding = previous_amount * 1.2

  # print banner
  puts "********************"
  puts "****Customer Owes***"
  puts "********************"

  #calculate outstanding
  @orders.each do |order|
    outstanding += order.amount
  end

  #print details
  puts "name: #{@name}"
  puts "amount: #{outstanding}"
end

def print_banner
  puts "********************"
  puts "****Customer Owes***"
  puts "********************"
end

def print_detail(outstanding)
  puts "name: #{@name}"
  puts "amount: #{outstanding}"
end

def calculate_outstanding(initial_value)
  @order.inject(initial_value) { |sum, amount| sum += amount }
end

def print_owing(previous_amount)
  print_banner
  outstanding = calculate_outstanding(previous_amount * 1.2)
  print_detail(outstanding)
end
