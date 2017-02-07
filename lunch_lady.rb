# user choices from a list of main dishes
# user chooses up to 2 side dish items
# computer repeats users order
# computer totals lunch items and displays
require 'pry'


@main_dish = [ {   name: 'Meatloaf',       price: 5.00 },
               {   name: 'Mystery Meat',   price: 3.00 },
               {   name: 'Slop',           price: 1.00}
             ]

@second_dish = [ { name: 'Carrots',         price: 1.75 },
                 { name: 'Mystery Yogurt', price: 3.00 },
                 { name: 'Beef Jerkey',     price: 0.50}
               ]

@order =      []

def main_dish

  num = 1
  @main_dish.each do |dish|
    puts "#{num}: #{dish[:name]} ($#{dish[:price]})"
    num = num + 1
  end
  get_user_main
end

def get_user_main
  @user_main = gets.chomp.to_i - 1
  case @user_main
  when 0
    @order << @main_dish[0]
  when 1
    @order << @main_dish[1]
  when 2
    @order << @main_dish[2]
  else
    puts 'Invalid Choice.'
    main_menu
  end
  second_item
end

def second_item
  puts "What side dish would you like?"
  num = 1
 @second_dish.each do |dish|
  puts "#{num}: #{dish[:name]} ($#{dish[:price]})"
  num = num + 1
 end
  second_input
  puts "What is your second side dish?"
  second_input
  print_order
end

 def second_input
   @second_input = gets.chomp.to_i - 1
   case @second_input
   when 0
     @order << @second_dish[0]
   when 1
     @order << @second_dish[1]
   when 2
     @order << @second_dish[2]
   else
     puts 'Not a valid selection'
     main_menu
   end
end

def print_order
  puts 'Your order consists of:'
  puts  "#{@order [0] [:name]} #{@order [1] [:name]} #{@order [2] [:name]}"
  total
end

def total
  total = @order [0] [:price] + @order [1] [:price] + @order [2] [:price]

  puts "total: #{total}"
end

main_dish
