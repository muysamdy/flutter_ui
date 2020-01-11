import 'package:flutter/material.dart';
import 'package:food_delivery/data.dart';
import 'package:food_delivery/models/order.dart';

class CardScreen extends StatefulWidget {
  @override
  _CardScreenState createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  Widget _buildCardItem(Order order) => Container(
        height: 170.0,
        padding: EdgeInsets.all(20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Container(
                    width: 150.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(order.food.imageUrl),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(15.0)),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            order.food.name,
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            order.restaurant.name,
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 10.0),
                          Container(
                            width: 100.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border:
                                  Border.all(width: 0.8, color: Colors.black54),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  '-',
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(width: 20.0),
                                GestureDetector(
                                  onTap: () {},
                                  child: Text(
                                    order.quantity.toString(),
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 20.0),
                                GestureDetector(
                                  onTap: () {},
                                  child: Text(
                                    '+',
                                    style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: Text(
                '\$${order.quantity * order.food.price}',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    double totalPrice = 0;

    currentUser.cart.forEach(
      (Order order) => totalPrice += order.quantity * order.food.price,
    );
    return Scaffold(
      appBar: AppBar(
        title: Hero(
            tag: 'Cart (${currentUser.cart.length})',
            child: Text('Cart (${currentUser.cart.length})')),
      ),
      body: ListView.separated(
        physics: BouncingScrollPhysics(),
        itemCount: currentUser.cart.length + 1,
        itemBuilder: (BuildContext context, int index) {
          if (index < currentUser.cart.length) {
            Order order = currentUser.cart[index];
            return _buildCardItem(order);
          }
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Estimated Delivery Time',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      '25 mins',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Total Cost',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      '\$${totalPrice.toStringAsFixed(2)}',
                      style: TextStyle(
                          color: Colors.green[700],
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                SizedBox(height: 80.0)
              ],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => Divider(
          height: 1.0,
          color: Colors.grey,
        ),
      ),
      bottomSheet: Container(
        height: 80.0,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, -1),
              blurRadius: 6.0,
            ),
          ],
        ),
        child: Center(
          child: FlatButton(
            child: Text(
              'CHECKOUT',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0),
            ),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
