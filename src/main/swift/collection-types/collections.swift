func collectionTypes() {
    func mergeFunction( first: String, second: String ) -> String {
        return first + second
    }
    
    var some: Array<String> = []
    let thing: [String] = ["!"]
    some.append( "World" ); some.append( "Hello" ); some.reverse()
    let something = some + thing;
    print( something )
    
    var someSet: Set<String> = []
    let thingSet: Set<String> = ["!"]
    someSet.insert( "World" ); someSet.insert( "Hello" )
    let somethingSet = someSet.union( thingSet );
    print( somethingSet )
    
    var someDict: Dictionary<Int, String> = [:]
    let thingDict: Dictionary<Int, String> = [2: "!"]
    someDict.updateValue( "World", forKey: 1 ); someDict.updateValue( "Hello", forKey: 0 ); someDict.updateValue( "!", forKey: 2 )
    let somethingDict = someDict.merging( thingDict, uniquingKeysWith: mergeFunction );
    print( somethingDict )
}
