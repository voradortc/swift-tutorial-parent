func controlFlow() {
    func sortDict( tupleA: ( _: String, value: Int ), tupleB: ( _: String, value: Int ) ) -> Bool {
        return tupleA.value < tupleB.value
    }

    func testGuard( test: Int? ) {
        guard let x = test else {
            return
        }
        
        print( "Test value is \( x )" )
    }

    let array = ["Five": 5, "Six": 6, "Seven": 7, "Eight": 8]
    
    for ( member, _ ) in array.sorted( by: sortDict ) {
        print( member, terminator: "! " )
    }
    
    print()
    var i = 0
    
    while i < 10 {
        print( i, terminator: " " )
        i += 1
    }
    
    print()
    
    repeat {
        i -= 1
        print( i, terminator: " " )
    } while i > 0
    
    print()
    let statement = Bool.random()
    
    if statement {
        print( "Statement was true" )
    } else {
        print( "Statement was false" )
    }
    
    let value = Int.random( in: 0 ... 10 )
    
    switch value {
        case 1, 3:
            print( "Value is One or Three" )
        case 2:
            print( "Value is Two" )
        case 4 ... 6:
            print( "Value is greater than Three, less than Seven" )
        case let x where x % 2 == 0:
            print( "Even value is \( x )" )
        case let x:
            print( "Odd value is \( x )" )
    }
    
    testGuard( test: 1 )
    testGuard( test: nil )
}
