func enumerations() {
    enum MyEnumeration {
        case first
        indirect case second( MyEnumeration )
        case third, fourth( String )
    }
    
    var variable = MyEnumeration.first
    variable = .second( .third )
    print( variable )
    
    enum MyIterableEnumeration : Int, CaseIterable {
        case first = 1, second, third, fourth = 25
    }
    
    for myCase in MyIterableEnumeration.allCases {
        print( "\( myCase ) is: \( myCase.rawValue )", terminator: "; " )
    }
    
    print()
    variable = .fourth( "Any String goes here" )
    print( variable )
    let variable2 = MyIterableEnumeration( rawValue: 4 )
    
    if let foundValue = variable2 {
        print( foundValue )
    } else {
        print( "No value found in variable2" )
    }
}
