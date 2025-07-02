set fd1 [open "proc.tcl" r+]
set fd2 [open "arg.tcl" r]

set data [read $fd2]

seek $fd1 0 end
puts $fd1 ""
puts -nonewline $fd1 "$data"

close $fd2

flush $fd1

seek $fd1 0 start
set content [read $fd1]
puts $content

close $fd1
