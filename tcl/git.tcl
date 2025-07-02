#!usr/bin/tclsh

if {$argc < 1} {
    puts "Usage: $argv0 <commitMSG>"
    exit 1
}

set commitMSG [lindex $argv 0]

set cmds [list \
    [list git add .]\
    [list git commit -m $commitMSG]\
    [list git push]\
]

foreach cmd $cmds {
    if {[catch {eval exec $cmd} err]} {
        set cmdline [join $cmd " "]
        puts "Error: '$cmdline' failed -> $err"
        exit 1
    }
}

puts "Success git"