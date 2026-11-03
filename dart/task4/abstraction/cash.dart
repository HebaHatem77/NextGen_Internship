import 'payment.dart';

class CashPayment implements Payment {
  double amount;

  CashPayment({required this.amount});

  @override
  void pay(double amount) {
    if (amount <= 0) {
      print("Invalid payment amount.");
      return;
    }
    if (amount <= this.amount) {
      this.amount -= amount;
      print("Paid $amount in cash. Current cash: ${this.amount}");
    } else {
      print("Insufficient cash. Payment failed.");
    }
  }
}
