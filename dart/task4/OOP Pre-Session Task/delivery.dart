abstract class Delivery {
  int orderId;
  double price;
  Delivery({required this.orderId, required this.price});

  void displayInfo() {
    print('Order ID: $orderId');
    print('Price: $price EGP');
  }

  double calculateDeliveryFee() {
    double deliveryFee = price * 0.1; // 10% of the price
    return deliveryFee;
  }

  void deliver();
}
