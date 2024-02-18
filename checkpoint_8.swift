protocol Building {
    var nameEstateAgent: String {get}
    var locationAddress: String {get}
    var numberOfRooms: Int {get}
    var type: String {get}
    var cost: Int {get}
    
    func printSalesSummary()
}

extension Building {
    func printSalesSummary(){
        print("\(nameEstateAgent) is selling a \(type) at \(locationAddress) with \(numberOfRooms) rooms for \(cost) NOK.")
    }
}

struct House: Building {
    let type = "house"
    let nameEstateAgent: String
    let locationAddress:String
    let numberOfRooms: Int
    let cost: Int
}

struct Office: Building {
    let type = "office"
    let nameEstateAgent: String
    let locationAddress: String
    let numberOfRooms: Int
    let cost: Int
}

let buildingOne = House(nameEstateAgent: "Real Estate Inc", locationAddress: "St Olavsveg 71", numberOfRooms: 3, cost: 5_000_000)
buildingOne.printSalesSummary()

let buildingTwo = Office(nameEstateAgent: "Megler 1", locationAddress: "Nedre Hagavei 156", numberOfRooms: 12, cost: 13_000_000)
buildingTwo.printSalesSummary()
