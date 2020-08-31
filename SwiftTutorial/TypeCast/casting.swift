func typeCasting() {
    class Base {}
    class Sub1: Base {}
    class Sub2: Base {}
    
    let object = Sub1()
    let casted: Any = object as Base
    
    print( "Is casted a Sub1? \( casted is Sub1 )" )
    print( "Is casted a Sub2? \( casted is Sub2 )" )
}
