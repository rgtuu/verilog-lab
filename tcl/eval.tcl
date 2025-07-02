set command {puts "\"Hello, World!\""}
eval $command

set op "+"
set a 5
set b 3
set result [eval expr $a $op $b]
puts $result

set cmd [list set var 10]
eval $cmd
puts $var