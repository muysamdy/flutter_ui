import 'package:food_delivery/models/food.dart';
import 'package:food_delivery/models/order.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:food_delivery/models/user.dart';

// Food
final _burrito =
    Food(imageUrl: 'assets/images/burrito.jpg', name: 'Burrito', price: 8.99);

final _steak =
    Food(imageUrl: 'assets/images/steak.jpg', name: 'Steak', price: 17.99);

final _pasta =
    Food(imageUrl: 'assets/images/pasta.jpg', name: 'Pasta', price: 14.99);

final _ramen =
    Food(imageUrl: 'assets/images/ramen.jpg', name: 'Ramen', price: 14.99);

final _pancakes =
    Food(imageUrl: 'assets/images/pancakes.jpg', name: 'Pancake', price: 9.99);

final _burger =
    Food(imageUrl: 'assets/images/burger.jpg', name: 'Pizza', price: 11.99);

final _pizza =
    Food(imageUrl: 'assets/images/pizza.jpg', name: 'Pizza', price: 14.99);

final _salmon = Food(
    imageUrl: 'assets/images/salmon.jpg', name: 'Salmon Salad', price: 12.99);

// Restaurants

final _restaurant0 = Restaurant(
  name: 'Restaurant 0',
  address: '131 Sok San Road',
  menu: [_burrito, _steak, _pasta, _ramen, _pancakes, _burger, _pizza, _salmon],
  imageUrl: 'assets/images/restaurant0.jpg',
  rating: 5,
);

final _restaurant1 = Restaurant(
  name: 'Restaurant 1',
  address: '13 Wat Bo Road',
  menu: [_steak, _pasta, _ramen, _pancakes, _burger, _pizza],
  imageUrl: 'assets/images/restaurant1.jpg',
  rating: 4,
);

final _restaurant2 = Restaurant(
  name: 'Restaurant 2',
  address: '220 Road 6, Siem Reap',
  menu: [_steak, _pasta, _pancakes, _burger, _pizza, _salmon],
  imageUrl: 'assets/images/restaurant2.jpg',
  rating: 4,
);

final _restaurant3 = Restaurant(
  name: 'Restaurant 3',
  address: '1331 Road 6, Siem Reap',
  menu: [_burrito, _steak, _burger, _pizza, _salmon],
  imageUrl: 'assets/images/restaurant3.jpg',
  rating: 2,
);

final _restaurant4 = Restaurant(
  name: 'Restaurant 4',
  address: '200 Main st, Siem Reap',
  menu: [_burger, _burrito, _ramen, _pancakes, _salmon],
  imageUrl: 'assets/images/restaurant4.jpg',
  rating: 3,
);

final List<Restaurant> restaurants = [
  _restaurant0,
  _restaurant1,
  _restaurant2,
  _restaurant3,
  _restaurant4,
];

// User

final currentUser = User(
  name: 'Rebecca',
  orders: [
    Order(
      date: 'Nov 12, 2019',
      food: _steak,
      restaurant: _restaurant2,
      quantity: 1,
    ),
    Order(
      date: 'Nov 8, 2019',
      food: _ramen,
      restaurant: _restaurant0,
      quantity: 3,
    ),
    Order(
      date: 'Nov 5, 2019',
      food: _burrito,
      restaurant: _restaurant1,
      quantity: 2,
    ),
    Order(
      date: 'Nov 2, 2019',
      food: _salmon,
      restaurant: _restaurant3,
      quantity: 1,
    ),
    Order(
      date: 'Nov 1 , 2019',
      food: _pancakes,
      restaurant: _restaurant4,
      quantity: 1,
    ),
  ],
  cart: [
    Order(
      date: 'Nov 11, 2019',
      food: _burger,
      restaurant: _restaurant2,
      quantity: 2,
    ),
    Order(
      date: 'Nov 11, 2019',
      food: _pasta,
      restaurant: _restaurant2,
      quantity: 1,
    ),
    Order(
      date: 'Nov 11, 2019',
      food: _salmon,
      restaurant: _restaurant3,
      quantity: 1,
    ),
    Order(
      date: 'Nov 11, 2019',
      food: _pancakes,
      restaurant: _restaurant4,
      quantity: 3,
    ),
    Order(
      date: 'Nov 11, 2019',
      food: _burrito,
      restaurant: _restaurant1,
      quantity: 2,
    ),
  ],
);
