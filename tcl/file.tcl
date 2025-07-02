!/usr/local/bin/tclsh

puts "Program Started"
set handle [open MyFileName w]
puts $handle "This line will be printed in MyFileNam"
flush $handle; # save file right now
close $handle
puts "Program was over"

set input0 [open "file.tcl" r]
while {[gets $input0 line] >= 0} {
    puts $line
}
close $input0

set input1 [open "file.tcl" r]
set content [read $input1]
set position [tell $input1]
puts $position
seek $input1 0 start
puts [tell $input1]
puts $content
close $input1

set input2 [open "file.tcl" r]
set partial_content [read $input2 613]
puts $partial_content
close $input2
