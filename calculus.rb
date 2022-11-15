# Calculus

require 'cmath'

def calc_equat_quadratic
  
  # Calc

  puts "We will calculate the roots of the quadratic function!"

  print "Type a: "
  coeffic_a = gets.chomp.to_f
  print "Type b: "
  coeffic_b = gets.chomp.to_f
  print "Type c: "
  coeffic_c = gets.chomp.to_f

  delta = coeffic_b ** 2 - 4 * coeffic_a * coeffic_c

  x1 = (-coeffic_b + CMath.sqrt(delta) ** 0.5) / (2 * coeffic_a)
  x2 = (-coeffic_b - CMath.sqrt(delta) ** 0.5) / (2 * coeffic_a)

  vert_m_x = -coeffic_b / (2 * coeffic_a)
  vert_m_y = -delta / (4 * coeffic_a)

  puts "Tha roots are: #{x1} and #{x2}"

  if coeffic_a > 0

    # min

    print "The minimum "
  else

    # max

    print "The maximum "
  end

  puts "is (#{vert_m_x}, #{vert_m_y})"
end

def main
  
  # Starting
  puts "*************************************************************" 
  puts "* Welcome to the calculus program. Let's learn mathematics! *"
  puts "*************************************************************" 

  calc_equat_quadratic
end

main
