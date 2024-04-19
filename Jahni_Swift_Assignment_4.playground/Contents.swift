



//Trailer Property: brand (String) Methods: startEngine(), stopEngine()

protocol Trailer{
    var brand: String {get}
    var isRunning: Bool {get}
    func startEngine()
    func stopEngine()
}



//WaterSystem Property: waterCapacity (Double) Methods: fillWaterTank(), drainWaterTank()

protocol WaterSystem{
    var waterCapacity: Double {get}
    var isFull: Bool {get}
    func fillWaterTank()
    func drainWaterTank()
}

//Implement a class named Camper that conforms to any 2 of the 5 protocols.
class Camper: Trailer, WaterSystem{
    let brand: String
    let waterCapacity: Double
    var isRunning: Bool = false
    var isFull: Bool = false
    init(brand: String, waterCapacity: Double) {
        self.brand = brand
        self.waterCapacity = waterCapacity
    }
    func startEngine() {
        if !isRunning{
            self.isRunning = !self.isRunning
            print("Engine has started")
        }
    }
    
    func stopEngine() {
        if isRunning{
            self.isRunning = !self.isRunning
            print("Engine has stopped")
        }
    }
    
   
    
    func fillWaterTank() {
        if !isFull{
            print("Water has been filled to \(waterCapacity)L")
            self.isFull = !self.isFull
        }else{
            print("Tank is already full")
        }
    }
    func drainWaterTank() {
        if isFull{
            print("\(waterCapacity)L have been drained")
            self.isFull = !self.isFull
        }else{
            print("Tank is currently empty")
        }
        
    }
    
    
}



//write test code to demonstrate the functionality of the Camper class
let newCamper = Camper(brand: "Toyota", waterCapacity: 40)
newCamper.fillWaterTank()
newCamper.drainWaterTank()
newCamper.startEngine()
newCamper.stopEngine()
