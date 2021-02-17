import 'package:flutter/widgets.dart';
import 'package:shoppingfull/models/cart-item.model.dart';

class CartBloc extends ChangeNotifier {
  var cart = new List<CartItemModel>();
  double total = 0;

  get() {
    return cart;
  }

  add(CartItemModel item) {
    cart.add(item);
    calculateTotal();
  }

  remove(CartItemModel item) {
    cart.removeWhere((element) => element.id == item.id);
    calculateTotal();
  }

  itemInCart(CartItemModel item) {
    var result = false;
    cart.forEach((element) {
      if (item.id == element.id) result = true;
    });
    return result;
  }

  increase(CartItemModel item) {
    if (item.quantity < 10) {
      item.quantity++;
      calculateTotal();
    }
  }

  decrease(CartItemModel item) {
    if (item.quantity > 1) {
      item.quantity--;
      calculateTotal();
    }
  }

  calculateTotal() {
    total = 0;
    cart.forEach((item) {
      total += (item.price * item.quantity);
    });
    notifyListeners();
  }
}
