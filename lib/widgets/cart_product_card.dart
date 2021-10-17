import 'package:flutter/material.dart';
import 'package:flutter_get_firestore/controllers/cartcontroler.dart';
import 'package:flutter_get_firestore/models/productmodel.dart';
import 'package:get/get.dart';

class CartPoductCard extends StatelessWidget {
  final CartController cartController;
  final Product product;
  final int quantity;
  final index;

  const CartPoductCard({
    Key key,
    @required this.cartController,
    @required this.product,
    @required this.quantity,
    @required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage('${product.imageUrl}'),
          ),
          Text("${product.name}"),
          IconButton(
              onPressed: () {
                cartController.addProduct(product);
              },
              icon: Icon(Icons.add_circle)),
          Text("$quantity"),
          IconButton(
              onPressed: () {
                cartController.removerprodcut(product);
              },
              icon: Icon(Icons.remove_circle)),
        ],
      ),
    );
  }
}
