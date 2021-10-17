import 'package:flutter/material.dart';
import 'package:flutter_get_firestore/controllers/cartcontroler.dart';
import 'package:flutter_get_firestore/widgets/cart_product_card.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  final CartController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CartScreen"),
      ),
      body: SizedBox(
        height: 600,
        child: Expanded(
          child: Obx(() => ListView.builder(
                itemCount: controller.products.length,
                itemBuilder: (context, int index) {
                  return CartPoductCard(
                    cartController: controller,
                    product: controller.products.keys.toList()[index],
                    quantity: controller.products.values.toList()[index],
                    index: index,
                  );
                },
              )),
        ),
      ),
    );
  }
}
