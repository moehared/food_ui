class CartItem {
  final String id;
  final String image;
  final double price;
  final int quantity;
  final String productName;
  final double discount;

  const CartItem({
    required this.id,
    required this.image,
    required this.price,
    required this.quantity,
    required this.productName,
    required this.discount,
  });
}

const cartList = const [
  CartItem(
      id: '1',
      image: 'burger.png',
      price: 2.99,
      quantity: 2,
      productName: 'Cheese burger',
      discount: -2.0),
  CartItem(
      id: '2',
      image: 'cheese_dip.png',
      price: 4.99,
      quantity: 1,
      productName: 'Cheese Dip',
      discount: -1.0),
];

double get subTotal {
  return cartList.fold(
      0.0, (previousValue, element) => element.price + previousValue);
}

const double deliveryCharge = 3.00;

double get discount => cartList.fold(
    0.0, (previousValue, element) => previousValue + element.discount);
double get total {
  return (subTotal + 3.00) - deliveryCharge;
}
