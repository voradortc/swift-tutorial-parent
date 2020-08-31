func advancedOperators() {
    print( "Bitwise Operators" )
    print( "Not: x = ~5, negates the bit value of the operand (x would be \( ~5 ))" )
    print( "And: 5 & 9; applies AND to all bits, (5 & 9 would be \( 5 & 9 ))" )
    print( "Or: 5 | 9; applies OR to all bits, (5 | 9 would be \( 5 | 9 ))" )
    print( "Xor: 5 ^ 9; applies XOR to all bits, (5 ^ 9 would be \( 5 ^ 9 ))" )
    print( "Left Shift: 5 << 2; shifts all bits to the left, (5 << 2 would be \( 5 << 2 ))" )
    print( "Right Shift: 5 >> 2; shifts all bits to the right, (5 >> 2 would be \( 5 >> 2 ))" )
    
    print( "\nOverflow Operators" )
    print( "&+: Allows overflow; Int8.max &+ 1 = \( Int8.max &+ 1 ) instead of an error" );
    print( "&-: Allows overflow; Int8.min &- 1 = \( Int8.max &- 1 ) instead of an error" );
    print( "&*: Allows overflow; Int8.max &* 2 = \( Int8.max &* 2 ) instead of an error" );
    
    class Container {
        var x: Int8
        
        static func +( left: Container, right: Container ) -> Container {
            Container( left.x + right.x )
        }
        
        static prefix func -( container: Container ) -> Container {
            Container( -container.x )
        }
        
        static postfix func +++( container: inout Container ) {
            container = Container( container.x + 2 )
        }
        
        init( _ value: Int8 ) {
            self.x = value
        }
    }
}

postfix operator +++
