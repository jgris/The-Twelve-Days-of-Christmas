# The-Twelve-Days-of-Christmas
I don’t know why I did this. :-)
So, this tiny Swift code assembles the text of the popular Christmas song "The Twelve Days of Christmas" .

## How to use:
```Swift
// Who is the sender of the gifts?
let sender = "My true love"

// To whom?
let recipient = "me"

// List of Christmas gifts 
let gifts = ["partridge", "Turtle doves", "french hens", "calling birds", "golden rings", "geese a Laying",
            "swans a swimming", "maids a milking", "ladies dancing", "lords a leaping", "pipers piping", "drummers drumming"]

// Instance of 'ChristmasGifts' struct
var song = ChristmasGifts(gifts, to: recipient, from: sender)

// You can set instance property to 'true'
// if you want to to see numbers in lyrics in their textual representation.
song.numbersAsText = true

// Prints the lyrics to the console
song.doLyrics()
```
