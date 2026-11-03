import 'package:flutter/foundation.dart';
import 'product.dart';

class CartItem {
  final Product product;
  int quantity;

  CartItem({required this.product, this.quantity = 1});

  int get totalPrice => product.price * quantity;
}

final ValueNotifier<List<CartItem>> cartItems = ValueNotifier<List<CartItem>>(
  [],
);

void addToCart(Product product) {
  final items = List<CartItem>.from(cartItems.value);

  final index = items.indexWhere((item) => item.product.name == product.name);

  if (index >= 0) {
    items[index].quantity++;
  } else {
    items.add(CartItem(product: product));
  }

  cartItems.value = items;
}

void updateCart() {
  cartItems.value = List<CartItem>.from(cartItems.value);
}

void removeFromCart(CartItem item) {
  final items = List<CartItem>.from(cartItems.value);
  items.remove(item);
  cartItems.value = items;
}

double get subTotal =>
    cartItems.value.fold(0.0, (sum, item) => sum + item.totalPrice);

double get shipping => cartItems.value.isEmpty ? 0.0 : 30.0;

double get totalPrice => subTotal + shipping;
