set str "Hello, World!";

puts [string length $str];
puts [string index $str 7]
puts [string range $str 0 4]
puts [string tolower $str]
puts [string trim "    abc    "]
puts [string map {o 0 l 1} $str]
puts [string replace $str 0 4 "Hi"]
puts [string match "H*d!" $str]

# set str "The quick brown fox"

# if {[regexp {(\w+)\s+(\w+)} $str -> first second]} {
#     puts "First word: $first, Second word: $second"
# }

# regexp -nocase {fox} $str match
# puts $match; #fox

# regexp {(\d+)} "Age: 30" -> age
# puts $age; #age


# set str "The quick brown fox jumps over the lazy dog"

# regsub {(\w+) (\w+) (\w+)} $str {\3 \2 \1} result
# puts $result

# regsub -all {\w+} $str {[\0]} result
# puts $result

# regsub -nocase -all {o} $str "0" result
# puts $result