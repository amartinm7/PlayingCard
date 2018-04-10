import FisherYates
import PlayingCard
 
public struct Deck {
 
    fileprivate var cards: [PlayingCard]
 
    public static func standard52CardDeck() -> Deck {
 
        let suits: [Suit] = [.spades, .hearts, .diamonds, .clubs]
        let ranks: [Rank] = [.two, .three, .four, .five, .six, .seven, .eight, .nine, .ten, .jack, .queen, .king, .ace]
 
        var cards: [PlayingCard] = []
 
        for rank in ranks {
 
            for suit in suits {
 
                cards.append(PlayingCard(rank: rank, suit: suit))
 
            } // for
 
        } // for
 
        return Deck(cards)
 
    } // standard52CardDeck
 
    public init(_ cards: [PlayingCard]) {
 
        self.cards = cards
 
    } // init
 
    public mutating func shuffle() {
 
        cards.shuffle()
 
    } // shuffle
 
    public mutating func deal() -> PlayingCard? {
 
        guard !cards.isEmpty else {
            
            return nil
            
        } // guard
 
        return cards.removeLast()
    
    } // deal
 
} // Deck
 
// MARK: - ExpressibleByArrayLiteral
extension Deck : ExpressibleByArrayLiteral {
 
    public init(arrayLiteral elements: PlayingCard...) {
 
        self.init(elements)
 
    } // init
 
} // extension Deck : ExpressibleByArrayLiteral
 
// MARK: - Equatable
extension Deck : Equatable {}
 
public func ==(lhs: Deck, rhs: Deck) -> Bool {
 
    return lhs.cards == rhs.cards
 
} // func ==