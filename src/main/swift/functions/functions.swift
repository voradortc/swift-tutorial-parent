func functions() {
    func greeting() {
        print( "Hello Functions!" )
    }

    func inoutGreeting( _ name: inout String ) {
        name = "Hello \( name )!"
    }


    func createMessage( _ name: String, screamIt exclamation: Bool = true ) -> String {
        "Hello \( name )\( exclamation ? "!" : "" )"
    }

    func createMessageForGroup( _ names: String..., screamIt exclamation: Bool = true ) -> String {
        var message: String = ""
        
        for name in names {
            message += "Hello \( name )\( exclamation ? "! " : ", " )"
        }
        
        return message
    }
    
    greeting()
    print( createMessage( "You" ) )
    
    var data = "Data"
    let greetingFunction: ( inout String ) -> () = inoutGreeting
    greetingFunction( &data )
    print( data )
    print( createMessage( "Amy", screamIt: false ) )
    print( createMessageForGroup( "Amy", "Ellie", "Charlotte" ) )
}
