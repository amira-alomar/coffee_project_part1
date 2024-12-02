class Order {
  String name = "";
  double price = 0;
  double quantity = 0;
  bool delivery = false;
  

  Order(this.name, this.price);
  String toString() {
    return '$name Price: \$$price';
  }

  String getTotalPrice() {
    int del = delivery ? 3 : 0;
    if (quantity == 1 || quantity == 0) {
      return (price + del).toStringAsFixed(1);
    }
    return (price * quantity + del).toStringAsFixed(1);
  }
}

List<Order> orders = [
  Order('Latte', 3.5),
  Order('Cappuccino', 2.5),
  Order('Mocha', 3),
  Order('Americano', 2),
  Order('Turkish Coffee', 3),
  Order('Cold Brew', 1.5),
];