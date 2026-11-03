import 'delivery.dart';

class ProductDelivery extends Delivery {
  ProductDelivery({required int orderId, required double price}) : super(orderId: orderId, price: price);

  @override
  void deliver() {
    print('Product order $orderId is being delivered.');
  }

  void checkProductOrder() {
    print('Product order is packed and ready.');
  }
}