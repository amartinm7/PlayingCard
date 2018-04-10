public extension Collection {
 
    func shuffled() -> [Iterator.Element] {
 
        var array = Array(self)
 
        array.shuffle()
 
        return array
 
    } // shuffled
 
} // public extension Collection
 
public extension MutableCollection {
 
    mutating func shuffle() {
 
        var i = startIndex
        var n = count
        
        while n > 1 {
 
            let j = index(i, offsetBy: random(n))
 
            swapAt(i, j)
 
            formIndex(after: &i)
 
            n -= 1
 
        } // while
 
    } // mutating func shuffle
 
} // public extension MutableCollection