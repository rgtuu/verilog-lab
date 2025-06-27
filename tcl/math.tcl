# Basic

puts -nonewline "3 + 7 = [expr {3 + 7}],   "
puts "10 - 7 = [expr {10 - 4}]"
puts -nonewline "42 / 6 = [expr {42 / 6}],   "
puts "16 % 3 = [expr {16 % 3}]"
puts "2 ^ 3 = [expr {2 ** 3}]"

# Compare

puts [expr {5 == 5}]
puts [expr {5 != 5}]
puts [expr {6 > 4}]
puts [expr {3 < 2}]

# logical

puts [expr {(5 == 5) && (14 > 7)}]
puts [expr {(5 != 5) || (12 < 14)}]
puts [expr {!(5 < 3)}]

# bit

puts [expr {5 & 3}]
puts [expr {5 | 3}]
puts [expr {5 ^ 3}]
puts [expr {~5}]
puts [expr {1 << 3}]
puts [expr {128 >> 5}]

# function

puts [expr {abs(-5)}]
puts [expr {sqrt(16)}]
puts [expr {round(3.7)}]
puts [expr {max(5, 10)}]

# variable

set x 5
set y 10
puts [expr {$x + $y}]

