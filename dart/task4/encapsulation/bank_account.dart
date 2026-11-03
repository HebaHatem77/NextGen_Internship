/*
1) Encapsulation - Bank Account 
Create a class called BankAccount where the _balance property is encapsulated and cannot be directlv accessed from outside the class. 
Implement the following methods: 
- Deposit money: deposit (double amount) 
- Withdraw money: withdraw(double amount) 
- Get current balance: getBalance() or a getter balance 
Business Rules & Constraints: 
- The balance cannot become negative (validate withdrawal request). 
- The user cannot deposit a negative or zero amount. 
*/
void main() {
  BankAccount account = BankAccount();
  account.deposit(100.0);
  account.withdraw(50.0);
  print("Current balance: ${account.balance}");
  account.withdraw(60.0);
}

class BankAccount {
  double _balance = 0.0;

  void deposit(double amount) {
    if (amount <= 0) {
      print("You cannot deposit a negative or zero amount.");
    } else {
      _balance += amount;
      print("Successfully deposited: $amount. Current balance: $_balance");
    }
  }

  void withdraw(double amount) {
    if (amount <= 0) {
      print("You cannot withdraw a negative or zero amount.");
    } else if (amount > _balance) {
      print(
        "Failed to withdraw: $amount because the current balance is $_balance",
      );
    } else {
      _balance -= amount;
      print("Successfully withdrew: $amount. Current balance: $_balance");
    }
  }

  // Getter for balance
  double get balance => _balance;
}
