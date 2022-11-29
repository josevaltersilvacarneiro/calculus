require 'cmath'

def equat_quadratic(a, b = 0, c = 0)

  delta = b ** 2 - 4 * a * c

  x1 = (-b + CMath.sqrt(delta) ** 0.5) / (2 * a)
  x2 = (-b - CMath.sqrt(delta) ** 0.5) / (2 * a)

  vert_m_x = -b / (2 * a)
  vert_m_y = -delta / (4 * a)

  return x1, x2, vert_m_x, vert_m_y

end

def print_header
  
  puts "*************************************************************" 
  puts "* Welcome to the calculus program. Let's learn mathematics! *"
  puts "*************************************************************" 

end

def get_elements(quantity_of_items)

  items = Array.new

  until quantity_of_items == 0 do

    print "Level #{quantity_of_items} coefficient: "
    number = gets.chomp.to_f
    items.push(number)

    quantity_of_items -= 1

  end

  return items

end

def calc_composite_function
  
  puts 'We will calculate the composition between two functions!'

  puts """
    1 → Quadratic Function
    2 → Linear Function
  """

  print 'Type of the first function: '
  type_of_the_first_func = gets.chomp
  print 'Type of the second function: '
  type_of_the_second_func = gets.chomp

  case type_of_the_first_func
  when '1'
    first_coeffic_a, first_coeffic_b, first_coeffic_c = get_elements(3)
  when '2'
    first_coeffic_a, first_coeffic_b = get_elements(2)
  end

  case type_of_the_second_func
  when '1'
    second_coeffic_a, second_coeffic_b, second_coeffic_c = get_elements(3)
  when '2'
    second_coeffic_a, second_coeffic_b = get_elements(2)
  end

  if type_of_the_first_func == '1' and type_of_the_second_func == '2'
    
    a = second_coeffic_a ** 2 * first_coeffic_a
    b = second_coeffic_a * (2 * second_coeffic_b * first_coeffic_a + first_coeffic_b)
    c = second_coeffic_b ** 2 + second_coeffic_b * first_coeffic_b + first_coeffic_c

    puts "f(g(x)) = #{a}x² + #{b}x + #{c}"

  elsif type_of_the_first_func == '1' and type_of_the_second_func == '2'

    a = second_coeffic_a * first_coeffic_a
    b = second_coeffic_b * first_coeffic_a + first_coeffic_b

    puts "f(g(x)) = #{a}x + #{b}"

  end

end

def calc_equat_linear

=begin
  This function calculates the root
  of the linear function
=end

  puts 'We will calculate the root of the linear function!'

  coeffic_a, coeffic_b = get_elements(2)
  root = -coeffic_b / coeffic_a
  
  puts "The root of the equation f(x) = #{coeffic_a}x + #{coeffic_b} is #{root}"

end

def calc_equat_quadratic
  
=begin
  This function calculates the roots
  and the maximum or minimum point 
  of the quadratic equation  
=end

  puts 'We will calculate the roots of the quadratic function!'

  coeffic_a, coeffic_b, coeffic_c = get_elements(3)
  x1, x2, vert_m_x, vert_m_y = equat_quadratic(coeffic_a, coeffic_b, coeffic_c)

  puts "The roots of the equation f(x) = #{coeffic_a}x² + #{coeffic_b}x + #{coeffic_c} are #{x1} and #{x2}"

  if coeffic_a > 0 # min

    print 'The minimum '
  else # max

    print 'The maximum '
  end

  puts "is (#{vert_m_x}, #{vert_m_y})"

end

def main
  
  # Start
  print_header
  
  # Choose what you want

  # Menu
  puts """
    1 - Quadratic Equation
    2 - Linear Equation
    3 - Calculate the composite of two functions
    * - The program is closed
  """

  print 'What want you make: '
  user_option = gets.chomp

  case user_option
  when '1'
    calc_equat_quadratic
  when '2'
    calc_equat_linear
  when '3'
    calc_composite_function
  else
    puts "The chosen option #{user_option} doesn't exist"
  end

end

main
