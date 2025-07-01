# set test_word "host address phone name"
# set test_number "123 456 789 101"

# regexp {([a-z]+) ([a-z]+) ([a-z]+) ([a-z]+)} $test_word all p0 p1 p2 p3
# puts $all
# puts $p0
# puts $p1
# puts $p2
# puts $p3

# regexp {(\w+)\s+(\w+)\s+(\w+)\s+(\w+)} $test_word -> p0 p1 p2 p3
# puts $p0
# puts $p1
# puts $p2
# puts $p3

# regexp {(\d+) (\d+) (\d+) (\d+)} $test_number all p0 p1 p2 p3
# puts $all
# puts $p0
# puts $p1
# puts $p2
# puts $p3

# regexp -indices {(\w+)\s+(\w+) (\w+)} $test_word all p0
# puts $all
# puts $p0

# set test_nocase "HOst AddResS pHonE NAMe"

# regexp -nocase {(\w+)\s+(\w+)\s+(\w+)\s+(\w+)} $test_word -> p0 p1 p2 p3
# puts $p0
# puts $p1
# puts $p2
# puts $p3

# set test_match "123.2441 -242.23n2"

# regexp -expanded {([+-]?\d*\.\d+)\s+([+-]?\d*\.\d+)} $test_match -> p0 p1
# puts $p0
# puts $p1

set test_word "host address phone name"
set test_number "123 456 789 101"
set test_nocase "HOst AddResS pHonE NAMe"
set test_match "123.2441 -242.23n2"

regsub {(\w+)\s+(\w+)} $test_word {\2 \1} p0
puts $p0

regsub {(\d+)\s+(\d+)\s+(\d+)\s+(\d+)} $test_number {\1 + \2 != \3 + \4} test_answer
puts $test_answer

regsub -nocase -all {o} $test_nocase "0" test_result
puts $test_result

regsub {([+-]?\d+)(\.\d+)\s([+-]?\d+)} $test_match {\3\2 \1} test_push
puts $test_push