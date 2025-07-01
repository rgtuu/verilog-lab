for {set i 0} {$i < 5} {incr i} {
    puts "Iteration $i"
}

set fruit_list {apple banana orange} 
foreach fruit $fruit_list {
    puts "I like $fruit"    
}

set data {John 25 Mary 30 Tom 22}
foreach {name age} $data {
    puts "$name is $age years old"
}

set data1_list {a b c}
set data2_list {1 2 3}
foreach data1 $data1_list data2 $data2_list {
    puts "$data1 $data2"
}

set count 0
while {$count < 5} {
    puts "Count : $count"
    incr count
}

for {set i 0} {$i < 10} {incr i} {
    if {$i == 5} {
        continue
    }
    if {$i == 8} {
        break
    }
    puts $i
}