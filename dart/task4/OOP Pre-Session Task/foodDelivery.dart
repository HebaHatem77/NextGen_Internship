import 'delivery.dart';

class FoodDelivery extends Delivery {
  FoodDelivery({required int orderId, required double price}) : super(orderId: orderId, price: price);

  @override
  void deliver() {
    print('Food order $orderId is being delivered.');
  }

  void checkFoodOrder() {
    print('Food order is ready.');
  }
}