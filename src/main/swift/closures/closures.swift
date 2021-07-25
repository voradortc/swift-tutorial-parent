import Dispatch

func closures() {
    func makeIncrementer( forIncrement amount: Int ) -> () -> Int {
        var runningTotal = 0
        
        func incrementer() -> Int {
            runningTotal += amount
            return runningTotal
        }
        
        return incrementer
    }
    
    func doPrint( _ printer: @autoclosure @escaping () -> () ) {
        DispatchQueue.main.async {
            printer()
        }
    }
    
    var printName: ( String ) -> () = { ( _ name: String ) in print( "Hello \( name )!" ) }
    printName( "Solomon" )
    
    printName = { print( "Good bye \( $0 )!" ) }
    printName( "Solomon" )
    
    let incrementByTwo = makeIncrementer( forIncrement: 2 )
    let incrementByOne = makeIncrementer( forIncrement: 1 )
    doPrint( print( "今日は!" ) )
    print( incrementByTwo() )
    print( incrementByOne() )
}
