let inputArray: [Int]? = nil
let returnedValue = inputArray?.randomElement() ?? Int.random(in: 1...100)

print(returnedValue)
