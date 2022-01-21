# FUNCTION

# 1) function without parameters
function sayHello () {
    echo "Hello World!"
}

sayHello

# 2) function with parameters
function greeting() {
    echo "Hello, I am $1 and I am $2 years old"
}

greeting "Alain" "26"
