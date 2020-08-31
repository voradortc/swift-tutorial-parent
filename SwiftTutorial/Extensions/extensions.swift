func extensions() {
    let msg = String()
    print( msg.message )
    print( msg.printMessage() )
}

extension String {
    var message: String {
        "This is message #1"
    }
    
    func printMessage() -> String {
        "This is message #2"
    }
}
