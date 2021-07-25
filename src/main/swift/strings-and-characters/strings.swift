func basicText() {
    let message = "This is a string, it supports UTF like the love kanji -> 愛."
    let multiLine = """

                    This is a multiline string, spaces before the triple quotes (\""")
                    Are not counted. Backslashes (\\) are ignored \
                    and don't break lines \u{1112}\u{1161}\u{11AB}.
                    """
    let char: Character = multiLine[multiLine.index( multiLine.endIndex, offsetBy: -2 )]
    var extended = #"This next character '\n' will not be rendered as expected ."#
    
    extended.insert( char, at: extended.index( extended.endIndex, offsetBy: -1 ) )
    print( message + multiLine + "\n" + extended )
    
    let commaIndex = message.firstIndex( of: "," ) ?? message.endIndex
    print( message[..<commaIndex] + ", a substring really" )
    print( "The last line had \( message.count + multiLine.count + "\n".count + extended.count ) characters" )
    print("\u{41} is equal to \u{0410}? \( "\u{41}" == "\u{0410}" )" )
    
    for codeUnit in char.utf8 {
        print( "\( codeUnit ) ", terminator: "" )
    }
    
    print()
}
