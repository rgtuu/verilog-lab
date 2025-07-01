#list

set fruits [list apple banana cherry]
puts $fruits

set mixed [list "Hello World" 42 3.14 {nested list}]
puts $mixed

#lappend

lappend fruits orange
puts $fruits

lappend mixed numbers 1 2 3
puts $mixed

#concat

set list1 [list 1 2 3]
set list2 [list 4 5 6]
set combined [concat $list1 $list2]
puts $combined

set result [concat "Hello" {World} [list How are you ?]]
puts $result

set list_combin [list $fruits $mixed]
puts $list_combin

lappend list_combin $result
puts $list_combin

set list_combin2 [concat $fruits $mixed $result]
puts $list_combin2