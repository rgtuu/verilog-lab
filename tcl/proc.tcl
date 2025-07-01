proc greet {name {greeting "Hello"}} {
    puts "$greeting, $name!"
}

greet "World"
greet "TCL" "Welcome"