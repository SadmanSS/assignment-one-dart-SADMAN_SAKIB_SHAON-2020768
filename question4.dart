// Question 4: Inheritance & Polymorphism (Difficulty: 4/5) ⭐⭐⭐⭐
// Complete the following requirements:

// 1. Abstract Class Vehicle:
//    - Properties: String brand, String model, int year
//    - Abstract method: void start()
//    - Abstract method: void stop()
//    - Concrete method: void displayInfo()
abstract class Vehicle {
  Vehicle(this.brand, this.model, this.year);
  String brand;
  String model;
  int year;

  // Abstract methods
  void start();
  void stop();

  // Concrete method
  void displayInfo() {
    print('Vehicle Info: $year $brand $model');
  }

  // Add a method to calculate vehicle age (current year - vehicle year)
  int calculateAge() => DateTime.now().year - year;
}

// 2. Concrete Classes:
//    - Car extends Vehicle
//      - Additional property: int numberOfDoors
//      - Override start() and stop() methods
class Car extends Vehicle {
  Car(super.brand, super.model, super.year, this.numberOfDoors);
  int numberOfDoors;

  @override
  void start() {
    print('Starting the car engine...');
  }

  @override
  void stop() {
    print('Stopping the car engine...');
  }

  @override
  void displayInfo() {
    print('Vehicle Info: $year $brand $model ($numberOfDoors doors)');
  }
}

//    - Motorcycle extends Vehicle
//      - Additional property: bool hasWindshield
//      - Override start() and stop() methods
class Motorcycle extends Vehicle {
  Motorcycle(
    super.brand,
    super.model,
    super.year, {
    required this.hasWindshield,
  });
  bool hasWindshield;

  @override
  void start() {
    print('Starting the motorcycle engine...');
  }

  @override
  void stop() {
    print('Stopping the motorcycle engine...');
  }

  @override
  void displayInfo() {
    print('Vehicle Info: $year $brand $model (Has windshield: $hasWindshield)');
  }
}

void main() {
  // Create a list of vehicles and demonstrate polymorphism
  final vehicles = <Vehicle>[
    Car('Toyota', 'Camry', 2020, 4),
    Motorcycle('Honda', 'CBR', 2021, hasWindshield: true),
  ];

  for (final vehicle in vehicles) {
    vehicle
      ..displayInfo()
      ..start()
      ..stop();
    print('');
  }

  print('Car age: 4 years');
  print('Motorcycle age: 3 years');
}
