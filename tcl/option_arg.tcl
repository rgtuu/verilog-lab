for {set i 0} {$i < $argc} {incr i} {
    set arg [lindex $argv $i]
    switch -glob -- $arg {
        -v      {puts "Verbose mode on"}
        -o*     {puts "Output file: [string range $arg 2 end]"}
        --help  {puts "Help message"; exit 0}
        default {puts "Unknown option: $arg"}
    }
}
