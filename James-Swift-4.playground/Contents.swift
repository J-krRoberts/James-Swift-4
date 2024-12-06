import UIKit

protocol Monster{
    func roar() -> String
    
    var name: String { get }
} // Monster protocol.

protocol FlyingMonster: Monster {
    func fly() -> String
    
    var wingSpan: Double { get }
} // Flying monster protocol.

protocol WaterMonster: Monster {
    func swim() -> String
    
    var swimSpeed: Int { get }
} // Water monster protocol.

class Dragon: FlyingMonster {
    func fly() -> String {
        return "\(self.name)"
    }
    
    var wingSpan: Double = 100.0
    
    func roar() -> String {
        return "\(self.name)"
    }
    
    var name: String = "Fire Breath"
    
    init(wingSpan: Double, name: String) {
        self.wingSpan = wingSpan
        self.name = name
    }
} // Dragon class.

class Gryphon: FlyingMonster {
    func fly() -> String {
        return "\(self.name)"
    }
    
    var wingSpan: Double = 20.0
    
    func printFLyingWingSPan() {
    }
    
    func roar() -> String {
        return "\(self.name)"
    } // Gryphon class.
    
    var name: String = "griff"
    
    init(wingSpan: Double, name: String) {
        self.wingSpan = wingSpan
        self.name = name
    }
} // Gryphon class.

class Kraken: WaterMonster {
    func swim() -> String {
        return "\(self.name)"
    }
    
    var swimSpeed: Int = 40
    
    func roar() -> String {
        return "\(self.name)"
    }
    
    var name: String = "Ocean Alpha"
    
    init(swimSpeed: Int, name: String) {
        self.swimSpeed = swimSpeed
        self.name = name
    }
} // Kraken class.

class Merfolk: WaterMonster {
    func swim() -> String {
        return "\(self.name)"
    }
    
    var swimSpeed: Int = 20
    
    func roar() -> String {
        return "\(self.name)"
    }
    
    var name: String = "selena"
    
    init(swimSpeed: Int, name: String) {
        self.swimSpeed = swimSpeed
        self.name = name
    }
} // Merfolk class.

// Output test method
let dragon = Dragon(wingSpan: 100.0, name: "Fire Breath")
let gryphon = Gryphon(wingSpan: 20.0, name: "Griff")
let kraken = Kraken(swimSpeed: 40, name: "Ocean Alpha")
let merfolk = Merfolk(swimSpeed: 20, name: "Selena")

let flyingMonster: [FlyingMonster] = [dragon]
let flyingmonster2: [FlyingMonster] = [gryphon]
let waterMonster: [WaterMonster] = [kraken]
let waterMonster2: [WaterMonster] = [merfolk]

func DragonDetails(dragon: [FlyingMonster]) {
    for d in dragon {
        print("\(d.name) is flying with a \(d.wingSpan) foot wingspan and will challenge anything in it's path!")
        print("\(d.name) roars so loud that it scares away every human it's near!")
        print() // Empty print statement.
    }
}

func GryphonDetails(gryphon: [FlyingMonster]) {
    for g in gryphon {
        print("\(g.name) is flying with it's impressive \(g.wingSpan) meter wings and soars high!")
        print("\(g.name) screeches with an ear piercing sound!")
        print() // Empty print statement.
    }
}

func MerfolkDetails(merfolk: [WaterMonster]) {
    for m in merfolk {
        print("\(m.name) is swimming at \(m.swimSpeed) knots hunting for food!")
        print("\(m.name) sings her favourite melodies to echant the fishermen when she is hungry!")
        print() // Empty print statement.
    }
}
    
func KrakenDetails(kraken: [WaterMonster]) {
    for k in kraken  {
        print("\(k.name) is swimming at \(k.swimSpeed) knots and won't let anything stand in it's way!")
        print("\(k.name) bellows deep from the marianas trench, causing the sea life to skirmish away in fear!")
        print() // Empty print statement.
    }
}

DragonDetails(dragon: flyingMonster)
GryphonDetails(gryphon: flyingmonster2)
KrakenDetails(kraken: waterMonster)
MerfolkDetails(merfolk: waterMonster2)


