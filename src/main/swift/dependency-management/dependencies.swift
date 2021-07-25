import SwiftyBeaver

func dependencies() {
    let log = SwiftyBeaver.self
    let console = ConsoleDestination()
    console.minLevel = .info
    console.asynchronously = false
    
    print( "Was the console added to the log? \( log.addDestination( console ) ? "Yes!": "NO" )" )
    log.info( "We are using a new logging dependency" )
}
