class Animals {
    var legs: Int
    
    init(legs: Int) {
        self.legs = legs
        print("This animal has \(legs) legs.")
    }
}

class Dogs: Animals {
    
    func speak(){
        print(String(repeating: "Woff!", count: Int.random(in: 1..<10)))
    }
}

let Cristo = Dogs(legs: 4)
Cristo.speak()

class Corgi: Dogs {
    override func speak() {
        print(String(repeating: "wewewe!Rrrr!", count: Int.random(in: 1..<7)))
    }
}

let rambo = Corgi(legs: 4)
rambo.speak()

class Poodles: Dogs {
    override func speak() {
        print(String(repeating: "Prrrr!", count: Int.random(in: 1..<3)))
    }
}

class Cats: Animals {
    let isTame: Bool
    
    init(legs: Int, isTame: Bool) {
        self.isTame = isTame
        super.init(legs: legs)
    }
    
    func speak(){
        print(String(repeating: "Meow!", count: Int.random(in: 1..<10)))
    }
}

class Persian: Cats {
    override func speak() {
            print(String(repeating: "Mrrrrrr....", count: Int.random(in: 1..<10)))
    }
}

class Lion: Cats {
    override func speak() {
        print(String(repeating: "Rrrrrr!", count: Int.random(in: 1..<10)))
    }
}

let smallCat = Persian(legs: 4, isTame: true)
smallCat.speak()

let bigCat = Lion(legs: 4, isTame: false)
bigCat.speak()
