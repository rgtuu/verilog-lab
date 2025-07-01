set fruit "apple"
switch $fruit {
    "apple" {puts "It's an apple"}
    "banana" {puts "It's an banana"}
    "orange" {puts "It's an orange"}
    default {puts "Unknown fruit"}

}

set filename "output.txt"
switch -glob $filename {
    *.txt {puts "Text file"}
    *.jpg {puts "JPEG image"}
    *.* {puts "File with extension"}
    default {puts "Unknown file type"}
}

switch -regexp $fruit {
    {^[0-9]+$} {puts "Number"}
    {^[a-zA-Z]+$} {puts "Word"}
    default {puts "Other"}
}

switch $day {
    "Monday" -
    "Tuesday" -
    "Wednesday" -
    "Thursday" -
    "Friday" {puts "Weeday"}
    "Saturday" -
    "Sunday" {puts "Weekend"}
    default {puts "Invalid day"}
}