func protocols() {
    class ABaseClass {}
    
    class AClass: ABaseClass, AProtocol {
        var aProperty: String
        
        required init( _ aProperty: String ) {
            self.aProperty = aProperty
        }
        
        func aFunction() {
            print( "The stored message is \"\( aProperty )\"" )
        }
    }
    
    var aClass: AProtocol = AClass( "" )
    aClass.aProperty = "Hello Protocols!"
    aClass.aFunction()
    print( aClass.getAConstant() )
}

fileprivate protocol AProtocol {
    var aProperty: String { get set }
    
    init( _ aProperty: String )
    
    func aFunction()
}

fileprivate extension AProtocol {
    func getAConstant() -> String { "CONSTANT!" }
}
