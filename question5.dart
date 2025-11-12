// Question 5: Advanced Features & Mixins (Difficulty: 5/5) ⭐⭐⭐⭐⭐
// Complete the following requirements:

// 1. Mixin Payable:
//    - Method: double calculateSalary(double baseSalary, double bonus)
//    - Method: void processPayment(double amount)
mixin Payable {
  double calculateSalary(double baseSalary, double bonus) => baseSalary + bonus;

  void processPayment(double amount) {
    // Process payment
    print('Payment processed: ${amount.toStringAsFixed(1)}');
  }
}

// 2. Mixin Reportable:
//    - Method: String generateReport(String employeeName, String department)
mixin Reportable {
  String generateReport(String employeeName, String department) =>
      'Monthly report for $employeeName in $department department';
} // 3. Abstract Class Employee:

//    - Properties: String name, String id, String department
//    - Abstract method: String getJobTitle()
//    - Abstract method: double getBaseSalary()
abstract class Employee {
  Employee(this.name, this.id, this.department);
  String name;
  String id;
  String department;

  String getJobTitle();
  double getBaseSalary();

  void displayInfo() {
    print('$name (ID: $id, Department: $department)');
    print('Job Title: ${getJobTitle()}');
    print('Base Salary: ${getBaseSalary()}');
  }
}

// 4. Concrete Classes:
//    - Manager extends Employee with Payable and Reportable
//      - Additional property: int teamSize
//      - Override required methods
class Manager extends Employee with Payable, Reportable {
  Manager(super.name, super.id, super.department, this.teamSize);
  int teamSize;

  @override
  String getJobTitle() => 'Manager';

  @override
  double getBaseSalary() => 8000;

  @override
  void displayInfo() {
    super.displayInfo();
    print('Team Size: $teamSize');
  }
}

//    - Developer extends Employee with Payable
//      - Additional property: String programmingLanguage
//      - Override required methods
class Developer extends Employee with Payable {
  Developer(super.name, super.id, super.department, this.programmingLanguage);
  String programmingLanguage;

  @override
  String getJobTitle() => 'Senior Developer';

  @override
  double getBaseSalary() => 6000;

  @override
  void displayInfo() {
    super.displayInfo();
    print('Programming Language: $programmingLanguage');
  }
}

void main() {
  // Create employees
  final manager = Manager('John Smith', 'M001', 'IT', 5);
  final developer = Developer('Alice Johnson', 'D001', 'IT', 'Dart');

  // Manager demonstration
  print(
    'Manager: ${manager.name} (ID: ${manager.id}, Department: ${manager.department}, Team Size: ${manager.teamSize})',
  );
  print('Job Title: ${manager.getJobTitle()}');
  print('Base Salary: ${manager.getBaseSalary()}');

  final managerSalary = manager.calculateSalary(manager.getBaseSalary(), 1000);
  print('Calculated Salary: ${managerSalary.toStringAsFixed(1)}');

  manager.processPayment(managerSalary);

  final report = manager.generateReport(manager.name, manager.department);
  print('Report: $report');
  print('');

  // Developer demonstration
  print(
    'Developer: ${developer.name} (ID: ${developer.id}, Department: ${developer.department}, Language: ${developer.programmingLanguage})',
  );
  print('Job Title: ${developer.getJobTitle()}');
  print('Base Salary: ${developer.getBaseSalary()}');

  final developerSalary =
      developer.calculateSalary(developer.getBaseSalary(), 500);
  print('Calculated Salary: ${developerSalary.toStringAsFixed(1)}');

  developer.processPayment(developerSalary);
}
