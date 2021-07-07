import '../model/category.dart';

enum FoodType {
  FAST_FOOD,
  HEALTH_FOOD,
  PIZZA,
  SAUCE,
}

final categoryLIST = [
  Category(
    title: 'fast food',
    id: 'c1',
    image: 'images/burger.png',
    isSelected: true,
  ),
  Category(title: 'Health food', id: 'c3', image: 'images/fruits.png'),
  Category(title: 'wraps', id: 'c4', image: 'images/wrap.png'),
  Category(title: 'Pizza', id: 'c5', image: 'images/pizza.png'),
  Category(title: 'Dessert', id: 'c6', image: 'images/ice_cream.png'),
  // Category(title: 'fast food', id: 'c1', image: 'images/burger.png'),
  // Category(title: 'fast food', id: 'c2', image: 'images/burger.png'),
  // Category(title: 'fast food', id: 'c3', image: 'images/burger.png'),
  // Category(title: 'fast food', id: 'c4', image: 'images/burger.png'),
  // Category(title: 'fast food', id: 'c5', image: 'images/burger.png'),
  // Category(title: 'fast food', id: 'c6', image: 'images/burger.png'),
];

const FOOD_DATA = const [
  {
    "id": "1",
    "name": "Cheese Burger",
    "type": FoodType.FAST_FOOD,
    "brand": "Hawkers",
    "price": 2.99,
    "image": "burger.png",
    "rating": 5.0,
    "topping": [
      'mayo.png',
      'ranch.png',
      'ketchup.png',
    ],
  },
  {
    "id": "2",
    "name": "Cheese Dip",
    "type": FoodType.SAUCE,
    "brand": "Hawkers",
    "price": 4.99,
    "image": "cheese_dip.png",
    "rating": 2.5,
    "topping": [
      'ranch.png',
      'creamy_cheese.png',
    ],
  },
  {
    "id": "3",
    "name": "Fries",
    "type": FoodType.FAST_FOOD,
    "brand": "Mcdonald",
    "price": 2.99,
    "image": "fries.png",
    "rating": 3.0,
    "topping": [
      'ranch.png',
      'ketchup.png',
    ],
  },
  {
    "id": "4",
    "name": "Ice Cream",
    "brand": "Ben & Jerry's",
    "price": 9.49,
    "image": "ice_cream.png",
    "rating": 4.5,
    "topping": [
      'chocolate.png',
      'straberry.png',
    ],
  },
  {
    "id": "5",
    "name": "Noodles",
    "type": FoodType.HEALTH_FOOD,
    "brand": "Hawkers",
    "price": 4.49,
    "image": "noodles.png",
    "rating": 2.9,
    "topping": [
      'mayo.png',
      'ranch.png',
      'ketchup.png',
    ],
  },
  {
    "id": "6",
    "name": "Pizza",
    "brand": "Dominos",
    "price": 17.99,
    "image": "pizza.png",
    "rating": 3.5,
    "topping": [
      'mayo.png',
      'ranch.png',
      'ketchup.png',
    ],
  },
  {
    "id": "7",
    "name": "Sandwich",
    "type": FoodType.HEALTH_FOOD,
    "brand": "Hawkers",
    "price": 2.99,
    "image": "sandwich.png",
    "rating": 2.5,
    "topping": [
      'mayo.png',
      'ranch.png',
      'ketchup.png',
    ],
  },
  {
    "id": "8",
    "name": "Wrap",
    "type": FoodType.HEALTH_FOOD,
    "brand": "Subway",
    "price": 6.99,
    "image": "wrap.png",
    "rating": 4.0,
    "topping": [
      'mayo.png',
      'ranch.png',
      'ketchup.png',
    ],
  }
];
