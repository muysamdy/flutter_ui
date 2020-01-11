import 'package:flutter/foundation.dart';
import 'package:food_delivery/models/food.dart';

class Restaurant {
  final String imageUrl;
  final String name;
  final String address;
  final int rating;
  final List<Food> menu;

  Restaurant({
    @required this.name,
    @required this.address,
    @required this.menu,
    this.imageUrl,
    this.rating,
  });
}
