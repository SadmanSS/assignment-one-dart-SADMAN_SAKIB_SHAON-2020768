// Question 3: Classes & Objects (Difficulty: 3/5) ⭐⭐⭐
// Complete the following requirements:

// Create a BankAccount class with the following specifications:
class BankAccount {
  // Savings/Checking

  // 2. Constructor:
  //    - Initialize all properties
  //    - Set initial balance to 0.0
  BankAccount(this.accountNumber, this.accountHolder, this.accountType)
      : balance = 0.0;
  // 1. Properties:
  String accountNumber;
  String accountHolder;
  double balance;
  String accountType;

  // 3. Methods:
  //    - deposit(double amount): Add money to account
  void deposit(double amount) {
    balance += amount;
  }

  //    - withdraw(double amount): Remove money from account (check for sufficient funds)
  void withdraw(double amount) {
    if (amount > balance) {
      print(
        'Insufficient funds for withdrawal of $amount from account $accountNumber',
      );
    } else {
      balance -= amount;
    }
  }

  //    - getBalance(): Return current balance
  double getBalance() => balance;

  //    - displayAccountInfo(): Show account details
  void displayAccountInfo() {
    print(
      'Account: $accountNumber, Holder: $accountHolder, Type: $accountType, Balance: $balance',
    );
  }
}

void main() {
  // 4. Create 3 bank accounts and demonstrate:
  //    - Depositing money
  //    - Withdrawing money
  //    - Displaying account information
  //    - Handling insufficient funds scenario

  // Create bank accounts
  final account1 = BankAccount('12345', 'Alice', 'Savings');
  final account2 = BankAccount('67890', 'Bob', 'Checking');

  // Deposit money
  account1.deposit(2000);
  account2.deposit(1000);

  // Withdraw money
  account1.withdraw(500);
  account2.withdraw(200);

  // Display account information
  account1.displayAccountInfo();
  account2
    ..displayAccountInfo()
    ..withdraw(1000); // Demonstrate insufficient funds scenario
}
