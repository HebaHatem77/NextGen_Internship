/*
3) Bank Account 
Create a class called BankAccount with properties: accountNumber. OwnerName, and balance. 
Implement the following methods: 
- deposit (amount)  adds money to the balance. 
- withdraw(amount) → removes money from balance if sufficient funds exist. 
- displayBalance()- prints the current account balance. 
Rule: If the withdrawal amount is greater than the balance, print "Insufficient balance"without deducting. 
Hint: Create an account object and test all operations sequentially.  
*/
void main () {
  BankAccount account = BankAccount("1234", "Ahmed Mohamed", 5000);

  account.displayBalance();

  account.deposit(500);
  account.displayBalance();

  account.withdraw(200);
  account.displayBalance();

// The withdrawal amount is greater than the balance
  account.withdraw(6000); 
  account.displayBalance();
}

class BankAccount {
  String accountNumber;
  String ownerName;
  double balance;
  BankAccount(this.accountNumber, this.ownerName, this.balance);

  void deposit(double amount) {
    balance += amount;
    print("Deposited: $amount");
  }

  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
      print("Withdrew: $amount");
    } else {
      print("Insufficient balance");
    }
  }

  void displayBalance() {
    print("Current balance: $balance");
  }
}