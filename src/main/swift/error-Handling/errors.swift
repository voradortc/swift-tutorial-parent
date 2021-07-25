func errorHandling() {
    enum ErrorSubtype: Error {
        case error1
        case error2
    }
    
    func throwingFunction() throws {
        throw ErrorSubtype.error1
    }
    
    defer {
        print( "This statement will be executed last" )
    }
    
    do {
        let random = Bool.random()
        
        if random {
            print ( "No error whatsoever" )
        } else {
            throw ErrorSubtype.error2
        }
        
        try throwingFunction()
    } catch ErrorSubtype.error1 {
        print( "Error1 caught" )
    } catch ErrorSubtype.error2 {
        print( "Error2 caught" )
    } catch {
        print( "Unknown error caught" )
    }
}
