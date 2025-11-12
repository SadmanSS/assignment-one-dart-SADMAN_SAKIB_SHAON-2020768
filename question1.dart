// Question 1: Basic Data Types & Functions (Difficulty: 1/5) ⭐
// Complete the following requirements:

// 1. Create variables of different data types: String, int, double, bool
// Add your variables here
String name = 'Alex Smith'; // Initialize with your name
int age = 23; // Initialize with your age
double height = 1.75; // Initialize with your height in meters
bool isStudent = true; // Initialize with true or false

// 2. Write a function called calculateBMI that takes weight (double) and height (double) as parameters and returns the BMI as a double
// Implement the calculateBMI function
double calculateBMI(double weight, double height) => weight / (height * height);

// 3. Write a function called getGrade that takes a score (int) and returns a grade (String) based on:
//    - 90-100: A
//    - 80-89: B
//    - 70-79: C
//    - 60-69: D
//    - Below 60: F
// Implement the getGrade function
String getGrade(int score) {
  if (score >= 90) {
    return 'A';
  } else if (score >= 80) {
    return 'B';
  } else if (score >= 70) {
    return 'C';
  } else if (score >= 60) {
    return 'D';
  } else {
    return 'F';
  }
}

void main() {
  // Initialize your variables with appropriate values
  name = 'Alex Smith';
  age = 23;
  height = 1.75; // height in meters
  isStudent = true;

  // Calculate BMI and grade
  final bmi = calculateBMI(70, height); // Example: 70 kg, 1.75 m
  final grade = getGrade(85); // Example score

  // Use string interpolation to display the results
  print('Name: $name, Age: $age, Height: $height, Is Student: $isStudent');
  print('BMI: ${bmi.toStringAsFixed(2)}');
  print('Grade: $grade');
}
