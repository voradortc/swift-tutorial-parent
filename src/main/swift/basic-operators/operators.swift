func basicOperators() {
    print( "Unary Operators" )
    print( "Negation: let x = 1; y = -x, negates the value of the operand (y would be -1)" )
    print( "One-Sided Range: 1 ..., ... 1, ..< 1 | reads, from 1 until overflow, from 0 until 1, etc." )
    print( "Logical Not: !a, negates the value of a (a is boolean)" )
    
    print( "\nBinary Operators" )
    print( "Assignment: let ( x, y ) = ( 1. \"Tuple\" ), initializes or updates a value (does not return)" )
    print( "Arithmetic (+, -, *, /, %): executes a standard operation (add, substract, multiply, divide, remainder)" )
    print( "Compound Assignment (+=, -=, etc.): executes an operation and initializes or updates a value (does not return)" )
    print( "Comparison (==, !=, <, >, <=, >=): comparison of two expressions, tuples are compared one value at a time" )
    print( "Nil-Coalescing: a ?? b | reads, a is an optional, it returns a! if it has a value otherwise returns b" )
    print( "Closed Range: 1 ... 5 | reads, from 1 to 5 inclusive" )
    print( "Half-Open Range: 1 ..< 5 | reads, from 1 to 5 not inclusive, or from 1 to 4" )
    print( "Logical And: a && b, compares (both must be true) the value of a and b (a and b are boolean)" )
    print( "Logical Or: a || b, compares (either can be true) the value of a and b (a and b are boolean)" )
   
    print( "\nTernary Operators" )
    print( "Conditional (inline \"if\"): a > b ? c : d | it reads, if a > b then return c, else return d" )
}
