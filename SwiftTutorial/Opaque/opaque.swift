func opaqueTypes() {
    struct SomeStruct: SomeProtocol {
        func returnT() -> Int {
            return 0
        }
    }
    struct SomeOtherStruct: SomeProtocol {
        func returnT() -> Double {
            return 0.0
        }
    }
    
    func opaqueFunction() -> some SomeProtocol {
        return SomeStruct()
    }
    
    print( "Opaque function returns a type of: \( type( of: opaqueFunction() ) )" )
}

fileprivate protocol SomeProtocol {
    associatedtype T
    
    func returnT() -> T
}
