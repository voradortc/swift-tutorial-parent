func structuresAndClasses() {
    var testStruct = TestStruct()
    print( testStruct.constantProperty )
    print( testStruct.variableProperty )
    testStruct.structInstanceFunction( "A function in a struct must be marked 'mutating' to allow changing properties." )
    print( testStruct.variableProperty )
    
    print( TestClass.typeConstant )
    print( TestClass.typeVariable )
    TestClass.typeFunction( "This is a type function. It belongs to the class, not its instances." )
    print( TestClass.typeVariable )
    print( "A subscript " + TestClass[7] )
    
    let testClass = TestClass()
    print( testClass.constantProperty )
    print( testClass.variableProperty )
    testClass.variableProperty = "It can be changed even if the instance of the class is constant."
    print( testClass.variableProperty )
    print( testClass.lazyProperty )
    print( "A property was computed as: \( testClass.computedProperty )" )
    testClass.computedProperty = 2.72
    print( testClass.readOnlyProperty )
    testClass.observedProperty = "New value for property"
    print( testClass[7] )
    testClass[7] = "Setting the class instance value via a subscript"
    print( testClass.inheritedProperty )
    testClass.inheritedFunction()
    testClass.finalInheritedFunction()
}

fileprivate struct TestStruct {
    let constantProperty = "This is a structure, a value type."
    var variableProperty = "When an instance of a value type is marked as a constant, so are all of its properties."
    
    mutating func structInstanceFunction( _ variableProperty: String ) {
        self.variableProperty = variableProperty
    }
}

fileprivate class BaseClass {
    var inheritedProperty: String
    
    func inheritedFunction() {
        print( "This is function can be inherited." )
    }
    
    final func finalInheritedFunction() {
        print( "This is function can be inherited. But not overridden" )
    }
    
    required init() {
        inheritedProperty = "This is property can be inherited."
    }
    
    deinit {
        print( "Moving base class to the trashcan" )
    }
}

fileprivate class TestClass: BaseClass {
    static let typeConstant = "This a type constant. It belongs to the class, not its instances."
    static var typeVariable = "This a type variable. It belongs to the class, not its instances."
    
    let constantProperty: String
    var variableProperty: String
    
    lazy var lazyProperty = "A lazy property will be initialized when accessed, not when declared"
    
    var computedProperty: Double {
        get {
            3.14
        }
        set {
            print( "This method sets the property value to: \( newValue )" )
        }
    }
    
    var readOnlyProperty: String {
        "A read only property cannot be modified outside of the class."
    }
    
    var observedProperty: String {
        willSet {
            print( "An observed property is being set to: \( newValue )" )
        }
        didSet {
            print( "An observed property was set, replacing: \( oldValue )" )
        }
    }
    
    static func typeFunction( _ typeVariable : String ) {
        self.typeVariable = typeVariable
    }
    
    static subscript( index: Int ) -> String {
        "Accessing the class via a subscript with index: \( index )"
    }
    
    subscript( index: Int ) -> String {
        get {
            "Accessing the class instance via a subscript with index: \( index )"
        }
        set {
            print( "This method sets the subscript value to: \( newValue )" )
        }
    }
    
    override func inheritedFunction() {
        super.inheritedFunction()
        print( "This is function is being overridden." )
    }
    
    required init() {
        print( "Running a class initializer" )
        constantProperty = "This is a constant property, it cannot be changed."
        variableProperty = "This is a variable property."
        observedProperty = "Old value for property"
    }
    
    convenience init( _ message: String ) {
        print( "Initializer message: \( message )" )
        self.init()
    }
    
    deinit {
        print( "Moving subclass to the trashcan" )
    }
}
