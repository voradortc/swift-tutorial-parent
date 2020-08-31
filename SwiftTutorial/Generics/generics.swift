func generics() {
    func genericPrinter<T>( _ parameter: T ) where T: Equatable {
        print( "Parameter is of type: \( type( of: parameter ) ), and value: \( parameter )" )
    }
    
    class GenericType<U: Equatable>: GenericProtocol {
        var genericProperty: U
        
        init( genericProperty: U ) {
            self.genericProperty = genericProperty
        }
        
        func genericPropertyPrinter() {
            print( "Generic property is of type: \( type( of: genericProperty ) ), and value: \( genericProperty )" )
        }
        
        func append( item: U ) {}
    }
    
    class FloatType: GenericType<Float> {
        override func genericPropertyPrinter() {
            print( "Float property has value: \( genericProperty )" )
        }
    }
    
    genericPrinter( "Hello!" )
    genericPrinter( 123.45 )
    
    let genericObject1 = GenericType<String>( genericProperty: "Hello!" )
    genericObject1.genericPropertyPrinter()
    let genericObject2 = GenericType<Double>( genericProperty: 123.45 )
    genericObject2.genericPropertyPrinter()
    let genericObject3 = FloatType( genericProperty: 678.94 )
    genericObject3.genericPropertyPrinter()
}

fileprivate protocol GenericProtocol {
    associatedtype U: Equatable
    func append( item: U )
}

fileprivate extension GenericProtocol where U == Double {}
