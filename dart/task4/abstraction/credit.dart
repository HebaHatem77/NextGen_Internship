import 'payment.dart';

class CreditCardPayment implements Payment {
  int cardId;
  String password;
  double amount;
  CreditCardPayment({
    required this.cardId,
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
        "Paid $amount using credit card with ID: $cardId. Current balance: ${this.amount}",
      );
    } else {
      print("Insufficient balance on credit card. Payment failed.");
    }
  }
}
