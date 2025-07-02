if {$argc < 2} {
    puts "Usage: $argv0 <arg1> <arg2>"
    exit 1
}

set arg1 [lindex $argv 0]
set arg2 [lindex $argv 1]

set sum [expr $arg1 + $arg2]

puts "Argument 1: $arg1"
puts "Argument 2: $arg2"
puts "sum : $sum"