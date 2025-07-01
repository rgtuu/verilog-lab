proc greet {name} {
    puts "Hello, $name!"
}
greet "dogsu"

proc greet {{name} {greeting "Hello"}} {
    puts "$greeting, $name!"
}

greet "World"
greet "TCL" "Welcome"

proc multiply {a b} {
    return [expr {$a * $b}]
}

puts [multiply 6 7]

proc last_element {list} {
    lindex $list end
}

puts [last_element {1 2 3 4 5}]

proc factorial {a} {
    set result 1
    for {set t 1} {$t <= $a} {incr t} {
        set result [multiply $t $result]
    }
    return $result
}

puts [factorial 4]

# proc haha {a} {
#     puts "a : $a"
# }

proc hoho {a args} {
    puts "a : $a"
    puts "arg : $args"
}

# haha 1
# haha 1 2
# haha 1 2 3 4 5

hoho 1
hoho 1 2
hoho 1 2 3 4 5

set y 10

proc local_var_example1 {} {
    set x 5
    puts "example 1 : $x"
    #puts [expr $x + $y] can't use this part.
}

proc local_var_example2 {} {
    set x 10
    global y; # global variable
    puts "example 2 : $x"
    local_var_example1
    puts [expr $x + $y]
}

local_var_example1
local_var_example2

proc modify_var {var_name new_value} {
    upvar $var_name local_var
    set local_var $new_value
}

set x 5
modify_var x 10
puts $x

puts [info args modify_var]
puts [info body modify_var]

proc new_factorial {n} {
    if {$n <= 1} {
        return 1
    } else {
        return [expr {$n * [new_factorial [expr {$n - 1}]]}]
    }
}

puts [new_factorial 5]