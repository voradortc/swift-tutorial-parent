func optionalChain() {
    func tryPrint( _ count: Int? ) {
        if let toPrint: Int = count {
            print( toPrint )
        }
    }
    
    let message: String? = "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
    tryPrint( message?.count )
}
