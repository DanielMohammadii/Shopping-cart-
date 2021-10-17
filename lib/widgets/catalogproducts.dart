import 'package:flutter/material.dart';
import 'package:flutter_get_firestore/controllers/cartcontroler.dart';
import 'package:flutter_get_firestore/models/productmodel.dart';
import 'package:get/get.dart';

class CatalogProducts extends StatelessWidget {
  final CartController cartcontroller = Get.put(CartController());
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
          itemCount: Product.products.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30.0,
                  backgroundImage:
                      NetworkImage("${Product.products[index].imageUrl}"),
                  backgroundColor: Colors.transparent,
                ),
                title: Text(Product.products[index].name),
                subtitle: Text("\$${Product.products[index].price}"),
                trailing: IconButton(
                    onPressed: () {
                      cartcontroller.addProduct(Product.products[index]);
                    },
                    icon: Icon(Icons.add_circle, color: Colors.blue)),
              ),
            );
          }),
    );
  }
}
