/*:
## Exercise - Enumerations
 
 Define a `Suit` enum with four possible cases: `clubs`, `spades`, `diamonds`, and `hearts`.
 */

enum Suit {
    case clubs
    case spades
    case diamonds
    case hearts
}

//:  Imagine you are being shown a card trick and have to draw a card and remember the suit. Create a variable instance of `Suit` called `cardInHand` and assign it to the `hearts` case. Print out the instance.

var cardInHand: Suit = .hearts
print(cardInHand)


//:  Now imagine you have to put back the card you drew and draw a different card. Update the variable to be a spade instead of a heart.
var cardInHand1: Suit = .hearts
print("Card in hand initially:", cardInHand)

// Put back the card and draw a different card
cardInHand1 = .spades
print("Card in hand after update:", cardInHand1)

//:  Imagine you are writing an app that will display a fun fortune (i.e. something like "You will soon find what you seek.") based on cards drawn. Write a function called `getFortune(cardSuit:)` that takes a parameter of type `Suit`. Inside the body of the function, write a switch statement based on the value of `cardSuit`. Print a different fortune for each `Suit` value. Call the function a few times, passing in different values for `cardSuit` each time.

func getFortune(cardSuit: Suit) {
    switch cardSuit {
        case .clubs:
            print("Your fortune: You will have a prosperous journey ahead.")
        case .spades:
            print("Your fortune: Success is within your grasp, keep pushing forward.")
        case .diamonds:
            print("Your fortune: A great opportunity is on the horizon, seize it.")
        case .hearts:
            print("Your fortune: Love and happiness will fill your days.")
    }
}

// Call the function with different values for cardSuit
getFortune(cardSuit: .clubs)
getFortune(cardSuit: .spades)
getFortune(cardSuit: .diamonds)
getFortune(cardSuit: .hearts)

//:  Create a `Card` struct below. It should have two properties, one for `suit` of type `Suit` and another for `value` of type `Int`.
struct Card {
    var suit: Suit
    var value: Int
}


//:  How many values can playing cards have? How many values can `Int` be? It would be safer to have an enum for the card's value as well. Inside the struct above, create an enum for `Value`. It should have cases for `ace`, `two`, `three`, `four`, `five`, `six`, `seven`, `eight`, `nine`, `ten`, `jack`, `queen`, `king`. Change the type of `value` from `Int` to `Value`. Initialize two `Card` objects and print a statement for each that details the card's value and suit.
enum Value: Int {
    case ace = 1, two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
}

struct Card1 {
    var suit: Suit
    var value: Value
}

let card1 = Card1(suit: .hearts, value: .ace)
let card2 = Card1(suit: .clubs, value: .king)

print("Card 1 - Suit: \(card1.suit), Value: \(card1.value)")
print("Card 2 - Suit: \(card2.suit), Value: \(card2.value)")



/*:
page 1 of 2  |  [Next: App Exercise - Swimming Workouts](@next)
 */
