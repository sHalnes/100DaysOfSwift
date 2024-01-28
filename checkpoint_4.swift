//************ CHECKPOINT 4

print("CHECKPOINT 4\n")
var lookupDict = [Int: Int]()//number : it's square root
var toSquare = 1
while (toSquare * toSquare <= 10_000) {
    lookupDict.updateValue(toSquare, forKey: toSquare * toSquare)
    toSquare += 1
}

enum BoundariesError: Error {
    case outOfBounds
    case noRoot
}
func findRoot (_ number: Int) throws -> Int {
    if (number < 1 || number > 10_000) {
        throw BoundariesError.outOfBounds
    } else if (lookupDict[number] == nil) {
        throw BoundariesError.noRoot
    } else {
        var dictValue = lookupDict[number, default: 0]
        return dictValue //lookupDict[number]
    }
}


let findRootOfThis = 169
do {
    let result = try findRoot(findRootOfThis)
    print("Square root of \(findRootOfThis) is \(result)")
} catch BoundariesError.outOfBounds {
    print("The number should be between 1 and 10 000.")
} catch BoundariesError.noRoot {
  print("There is no root among integers for this number")
} catch {
    print("There was an error: \(error.localizedDescription)") //this is Apple's error function that can be useful
}

