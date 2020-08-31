func theBasics() {
    let constant夢 = "this is a constant, with unicode chars 夢", something: UInt = 1024
    var variable = "Earth!"

    print( "Hello, \( constant夢 )" )
    print( "Hello, this is a number literal \( something )" )
    print( "Hello, \( variable )" )
    variable = "Mars!"; print( "Hello, " + variable )

    let max = Int64.max, min = Int64.min
    print( "An Int64 variable or constant has to be between \( min ) and \( max )" )

    let uMax = UInt64.max, uMin = UInt64.min
    print( "A UInt64 variable or constant has to be between \( uMin ) and \( uMax )" )

    let intMax = Int.max, intMin = Int.min
    print( "An Int variable or constant has to be between \( intMin ) and \( intMax ); platform dependant" )

    let uIntMax = UInt.max, uIntMin = UInt.min
    print( "A UInt variable or constant has to be between \( uIntMin ) and \( uIntMax ); platform dependant" )

    let double = 10_000_000.15, float: Float = 10_000_000.22
    print( "A Double variable like \( double ) can contain fractions" )
    print( "A Float variable like \( float ) is just a 32bit Double" )

    typealias SpecialInteger = Int64
    print( "My SpecialInteger type is actually just an \( SpecialInteger.self )" )

    let ok = ( status: 200, description: "OK", isError: false )
    print( "The constant ok \( ok ) is a Tuple" )

    let ( code, message, _ ) = ok
    print( "The constant ok has members, code = \( code ) and message = \( message )" )

    let convertedValue: Int? = Int( "Hello, world!" )
    let forceConvertedValue: Int! = Int( "123" )

    if let actualConvertedValue = convertedValue {
        print( "The bound optional convertedValue is \( actualConvertedValue )" )
    } else {
        print( "The optional convertedValue could not be converted? \( nil == convertedValue )" )
    }

    let extractedConvertedValue: Int = forceConvertedValue
    print( "The implicit optional forceConvertedValue is \( extractedConvertedValue )" )
}
