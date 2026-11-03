/*
5) Abstraction - Payment System 
Create an abstract class Payment containing an abstract method signature: 
abstract class Payment {
  void pay(double amount);
}
Create three concrete classes implementing the payment contract: 
- CashPayment  implements custom cash processing logic. 
- CreditCardPayment  implements credit card charging logic. 
- PayPalPayment  implements online PayPal checkout logic. 
Create objects from all three concrete payment classes and verify their payment execution. 
Hint: Enforce the contract using implements or extends.
*/
import 'cash.dart';
import 'credit.dart';
import 'paypal.dart';

void main() {
  // Cash Payment
  print("Cash Payment:");
  CashPayment cashPayment = CashPayment(amount: 100);
  cashPayment.pay(50);
  cashPayment.pay(-50); // Error
  cashPayment.pay(60); // Error

  // Credit Card Payment
  print("\nCredit Card Payment:");
  CreditCardPayment creditCardPayment = CreditCardPayment(
    cardId: 123456,
    amount: 250,
    password: 'a123@',
  );
  creditCardPayment.pay(150);
  creditCardPayment.pay(150); // Error

  // PayPal Payment
  print("\nPayPal Payment:");
  PaypalPayment payPalPayment = PaypalPayment(
    email: "heba@email.com",
    password: 'h123@',
    amount: 100,
  );
  payPalPayment.pay(50);
  payPalPayment.pay(150); // Error
}
