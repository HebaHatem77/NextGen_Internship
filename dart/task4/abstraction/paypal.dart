import 'payment.dart';

class PaypalPayment implements Payment {
  String email;
  String password;
  double amount;

  PaypalPayment({
    required this.email,
    required this.password,
    required this.amount,
  });

  @override
  void pay(double amount) {
    if (amount <= 0) {
      print("Invalid payment amount.");
      return;
    }
    if (amount <= this.amount) {
      this.amount -= amount;
      print(
        "Paid $amount using PayPal with email: $email. Current balance: ${this.amount}",
      );
    } else {
      print("Insufficient balance in PayPal account. Payment failed.");
    }
  }
}
