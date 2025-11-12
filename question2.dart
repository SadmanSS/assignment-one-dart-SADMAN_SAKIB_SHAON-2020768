// Question 2: Collections & Control Flow (Difficulty: 2/5) ⭐⭐
// Complete the following requirements:

import 'dart:math';

void main() {
  // 1. Create a List<String> of student names: ['Alice', 'Bob', 'Charlie', 'Diana', 'Eve']
  final studentNames = ['Alice', 'Bob', 'Charlie', 'Diana', 'Eve'];

  // 2. Create a Map<String, int> to store student scores
  final studentScores = <String, int>{};

  // 3. Use a for loop to assign random scores (60-100) to each student
  final random = Random();
  for (final name in studentNames) {
    final score =
        60 + random.nextInt(41); // generates values between 60 and 100
    studentScores[name] = score;
  }

  // 4. Find and display:
  //    - The student with the highest score
  //    - The student with the lowest score
  //    - The average score of all students
  var highestStudent = studentNames.first;
  var highestScore = studentScores[highestStudent]!;
  var lowestStudent = studentNames.first;
  var lowestScore = studentScores[lowestStudent]!;
  var totalScore = 0;

  for (final entry in studentScores.entries) {
    totalScore += entry.value;

    if (entry.value > highestScore) {
      highestScore = entry.value;
      highestStudent = entry.key;
    }

    if (entry.value < lowestScore) {
      lowestScore = entry.value;
      lowestStudent = entry.key;
    }
  }

  final averageScore = totalScore / studentScores.length;

  print('--- Student Scores ---');
  print(studentScores);
  print('\nHighest Score: $highestStudent with $highestScore');
  print('Lowest Score: $lowestStudent with $lowestScore');
  print('Average Score: ${averageScore.toStringAsFixed(2)}\n');

  // 5. Use a switch statement to categorize students:
  //    - 90-100: "Excellent"
  //    - 80-89: "Good"
  //    - 70-79: "Average"
  //    - Below 70: "Needs Improvement"
  print('--- Student Performance Categories ---');
  for (final student in studentNames) {
    final score = studentScores[student] ?? 0;
    var category = '';

    switch (score ~/ 10) {
      case 10:
      case 9:
        category = 'Excellent';
        break;
      case 8:
        category = 'Good';
        break;
      case 7:
        category = 'Average';
        break;
      default:
        category = 'Needs Improvement';
    }

    print('$student: $score ($category)');
  }
}
