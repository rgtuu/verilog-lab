#catch

if [catch {open "nonexistence.txt" r} fid] {
    puts "Error: $fid"
} else {
    puts "File opened succesfully"
    close $fid
}

#return

proc add {a b} {
    return [expr {$a + $b}]
}
puts "Answer is: [add 3 4]"

#error

proc divide {a b} {
    if {$b == 0} {
        error "Division by zero" in_divide_fuction DIVIDE_BY_ZERO
    }
    return [expr {$a / $b}]
}


if {[catch {divide 10 0} result options]} {
    puts "Error: $result"
    puts "Info: [dict get $options -errorinfo]"
    puts "Code: [dict get $options -errorcode]"
}

set abc [list START HELLO START STOP]

proc process_data {data} {
    foreach item $data {
        if {[catch {process_item $item} result]} {
            puts "Error processing item $item: $result"
            continue
        }
        if {$item eq "START"} {
            puts "Roading..."
        }        
    }
    return "Processing complete"
}
proc process_item {item} {
    if {$item eq "STOP"} {
        return "STOP"
        break
    } elseif {$item ne "START" && $item ne "STOP"} {
        error "Invalid item"
    }
}
puts [process_data $abc]