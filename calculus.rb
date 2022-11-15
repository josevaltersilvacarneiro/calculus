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

  puts "Tha roots are: #{x1} and #{x2}"
end

def main
  
  # Starting
  
  puts "Welcome to the calculus program. Let's learn mathematics!"
  calc_equat_quadratic
end

main
