import UIKit

/* Homework Assignment 5 -
  
    Classes,Structs,Enums
 
 */

class Vehicle{
    
    //Declare properties
    var make : String = ""
    var model : String = ""
    var year : Int = 0
    var weightInKgs : Double = 0.0
    var needsMaintenance : Bool
    var tripsSinceMaintenance : Int
    
    //Declare initializer
    init() {
        self.needsMaintenance = false //default value
        self.tripsSinceMaintenance = 0 //default value
    }
    
    //Declare setters for make, model, year, weight
    func setMake(_make:String){
        self.make = _make
    }
    
    func setModel(_model:String){
        self.model = _model
    }
    
    func setYear(_year:Int){
        self.year = _year
    }
    
    func setWeightInKgs(_weight:Double){
        self.weightInKgs = _weight
    }
    
    //Trips resetting method after repair
    func repair(){
        tripsSinceMaintenance = 0
        needsMaintenance = false
    }
    
}

//Inherit Cars subclass from Vehicle class
class Cars : Vehicle {
    
    var isDriving : Bool!
    
    func drive(){
        isDriving = true
    }
    
    func stop(){
        isDriving = false
        tripsSinceMaintenance += 1
        if(tripsSinceMaintenance == 100){
            needsMaintenance = true
        }
    }
    
    //Overriding repair method of parent class
    override func repair() {
        super.repair()
    }
    
}

//Inherit Planes subclass from Vehicle parent class
class Planes : Vehicle {
    
    var isFlying : Bool!
    
    func flying() -> Bool {
        
        if needsMaintenance {
            print("The plane can't fly until it is repaired")
            return false
        }else{
            isFlying = true
            return true
        }
    
    }

    
    func landing(){
        if (needsMaintenance == false) {
        isFlying = false
        tripsSinceMaintenance += 1
            if(tripsSinceMaintenance == 100){
            needsMaintenance = true
            }
        }
    }
    
}

//Define 3 cars and a plane
var car1 : Cars = Cars()
var car2 : Cars = Cars()
var car3 : Cars = Cars()
var plane1 : Planes = Planes()

//Set car1 properties
car1.setMake(_make: "Kia")
car1.setModel(_model: "Rio")
car1.setYear(_year: 2001)
car1.setWeightInKgs(_weight: 1093)

//99 trips in car1
for _ in 1..<100{
    car1.drive()
    car1.stop()
}

//Print car1 values
print()
print("Car 1 values after 99 trips : ")
print("make: \(car1.make), model: \(car1.model), year: \(car1.year), weight: \(car1.weightInKgs), Trips since Maintenance: \(car1.tripsSinceMaintenance), Needs Maintenance: \(car1.needsMaintenance)")
print()
print("************************************************************************************************************")
print()

//Set car2 properties
car2.setMake(_make: "Toyota")
car2.setModel(_model: "Camry")
car2.setYear(_year: 2021)
car2.setWeightInKgs(_weight: 1590)

//100 trips in car2
for _ in 1...100{
    car2.drive()
    car2.stop()
}

//print car2 values
print("Car 2 values after 100 trips : ")
print("make: \(car2.make), model: \(car2.model), year: \(car2.year), weight: \(car2.weightInKgs), Trips since Maintenance: \(car2.tripsSinceMaintenance), Needs Maintenance: \(car2.needsMaintenance)")
print()

print("Repairing Car 2")
car2.repair()
print("Car 2 values after repair : ")
print("make: \(car2.make), model: \(car2.model), year: \(car2.year), weight: \(car2.weightInKgs), Trips since Maintenance: \(car2.tripsSinceMaintenance), Needs Maintenance: \(car2.needsMaintenance)")
print()
print("************************************************************************************************************")
print()

//Set car3 properties
car3.setMake(_make: "Audi")
car3.setModel(_model: "S7 Sportback")
car3.setYear(_year: 2021)
car3.setWeightInKgs(_weight: 1998)

//101 trips in car3
for _ in 1...101{
    car3.drive()
    car3.stop()
}

//print car3 values
print("Car 3 values after 101 trips")
print("make: \(car3.make), model: \(car3.model), year: \(car3.year), weight: \(car3.weightInKgs), Trips since Maintenance: \(car3.tripsSinceMaintenance), Needs Maintenance: \(car3.needsMaintenance)")
print()

print("Repairing Car 3")
car3.repair()
print("Car 3 values after repair : ")
print("make: \(car3.make), model: \(car3.model), year: \(car3.year), weight: \(car3.weightInKgs), Trips since Maintenance: \(car3.tripsSinceMaintenance), Needs Maintenance: \(car3.needsMaintenance)")
print()
print("************************************************************************************************************")
print()

print("Plane 1 trips")
//99 trips in plane1
for _ in 1..<100{
    
    plane1.flying()
    plane1.landing()
}

print()
print("Plane 1 values after 99 trips : ")
print("Trips since Maintenance: \(plane1.tripsSinceMaintenance), Needs Maintenance: \(plane1.needsMaintenance)")
print()
print("100th Plane 1 trip")
plane1.flying()
plane1.landing()
print("Plane 1 values after 100th trip : ")
print("Trips since Maintenance: \(plane1.tripsSinceMaintenance), Needs Maintenance: \(plane1.needsMaintenance)")
print()

print("101st Plane 1 trip")
plane1.flying()
plane1.landing()
print("Trips since Maintenance: \(plane1.tripsSinceMaintenance), Needs Maintenance: \(plane1.needsMaintenance)")
print()

print("Repairing Plane 1")
plane1.repair()
print("Plane 1 values ater repair : ")
print("Trips since Maintenance: \(plane1.tripsSinceMaintenance), Needs Maintenance:  \(plane1.needsMaintenance)")
print()

print("Reflying Plane 1 after repair")
plane1.flying()
plane1.landing()
print("Plane 1 values reflying after repair : ")
print("Trips since Maintenance: \(plane1.tripsSinceMaintenance), Needs Maintenance: \(plane1.needsMaintenance)")
print()
print("************************************************************************************************************")
print()

/* End of Assignment */
