// ************** CHECKPOINT 6 ***********************

struct Car {
    let model: String
    let seatsNumber: Int
    var currentGear = 0
    
    func carInfo(){
        print("This is \(model) with \(seatsNumber) seats and the current gear is \(currentGear)")
    }
    
    mutating func changeGear(newGear: Int){
        if newGear == currentGear {
            print("This doesn't change anything. Think again.")
        } else if newGear > 0 && newGear <= 10 {
            currentGear = newGear
            print("Your new gear is \(newGear)")
        }
        else {
            print("Check your number, it's out of limit")
        }
    }
}

var myCar = Car(model: "Toyota", seatsNumber: 5)
myCar.changeGear(newGear: 3)
myCar.changeGear(newGear: 6)
myCar.changeGear(newGear: 6)
myCar.changeGear(newGear: -3)

myCar.carInfo()

// ************** end of CHECKPOINT 6 ***********************
