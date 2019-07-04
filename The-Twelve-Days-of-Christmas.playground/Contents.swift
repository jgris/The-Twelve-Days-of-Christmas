import Foundation

extension Int {
    var asOrdinal: String {
        let numberValue = NSNumber(value: self)
        let formatter = NumberFormatter()
        formatter.numberStyle = .ordinal
        return formatter.string(from: numberValue)!
    }
    var asWord: String {
        let numberValue = NSNumber(value: self)
        let formatter = NumberFormatter()
        formatter.numberStyle = .spellOut
        return formatter.string(from: numberValue)!
    }
}

struct ChristmasGifts {
    var sender: String
    var recipient: String
    var gifts: [String]
    
    var numbersAsText = false
    
    private var numberOfDays = 0
    
    init(_ gifts: [String], to recipient: String, from sender: String) {
        self.gifts = gifts
        self.recipient = recipient
        self.sender = sender
    }
    
    func doLyrics() {
        var resultLyrics = ""
        var coupletGifts = [String]()
        var isFirstCouplet: Bool = true
        for index in gifts.indices {
            let tempIndex = index + 1
            var coupletGift = ""
            if index > 0 {
                coupletGift = "\(numbersAsText ? tempIndex.asWord.capitalized : String(tempIndex)) \(gifts[index].capitalized) \n"
            } else {
                coupletGift = "\(gifts[index].capitalized) in a Pear Tree \n\n"
            }
            coupletGifts.append(coupletGift)
            
            var couplet = """
            On the \(tempIndex.asOrdinal) day of Christmas
            \(sender.capitalized) sent to \(recipient.capitalized): \n
            """
            
            for (index, gift) in coupletGifts.enumerated().reversed() {
                if isFirstCouplet {
                    couplet.append("A \(gift)")
                    isFirstCouplet = false
                } else if index == 0 {
                    couplet.append("And a \(gift)")
                } else {
                    couplet.append(gift)
                }
            }
            resultLyrics.append(couplet)
        }
        print(resultLyrics)
    }
}

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
