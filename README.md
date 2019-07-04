# The-Twelve-Days-of-Christmas
I don’t know why I did this. :-)
So, this tiny Swift code assembles the text of the popular Christmas song "The Twelve Days of Christmas" .

## How to use:
```Swift
let sender = "My true love"

let recipient = "me"

let gifts = ["partridge", "Turtle doves", "french hens", "calling birds", "golden rings", "geese a Laying",
            "swans a swimming", "maids a milking", "ladies dancing", "lords a leaping", "pipers piping", "drummers drumming"]

// Creating 
let song = ChristmasGifts(gifts, to: recipient, from: sender)
song.doLyrics()
```
