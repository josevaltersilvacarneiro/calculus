# Calculus

require 'cmath'

def print_header
  
  puts "*************************************************************" 
  puts "* Welcome to the calculus program. Let's learn mathematics! *"
  puts "*************************************************************" 

end

def calc_equat_linear

=begin
  This function calculates the root
  of the linear function
=end

  puts 'We will calculate the root of the linear function!'

  print 'Angle coefficient: '
  coeffic_a = gets.chomp.to_f
  print 'Linear coefficient: '
  coeffic_b = gets.chomp.to_f

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

  print 'Type a: '
  coeffic_a = gets.chomp.to_f
  print 'Type b: '
  coeffic_b = gets.chomp.to_f
  print 'Type c: '
  coeffic_c = gets.chomp.to_f

  delta = coeffic_b ** 2 - 4 * coeffic_a * coeffic_c

  x1 = (-coeffic_b + CMath.sqrt(delta) ** 0.5) / (2 * coeffic_a)
  x2 = (-coeffic_b - CMath.sqrt(delta) ** 0.5) / (2 * coeffic_a)

  vert_m_x = -coeffic_b / (2 * coeffic_a)
  vert_m_y = -delta / (4 * coeffic_a)

  puts "Tha roots are: #{x1} and #{x2}"

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
    * - The program is closed
  """

  print 'What want you make: '
  user_option = gets.chomp

  case user_option
  when '1'
    calc_equat_quadratic
  when '2'
    calc_equat_linear
  else
    puts "The chosen option #{user_option} doesn't exist"
  end

end

main
