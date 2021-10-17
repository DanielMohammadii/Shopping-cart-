import 'package:flutter/material.dart';
import 'package:flutter_get_firestore/screens/cartscreen.dart';
import 'package:flutter_get_firestore/widgets/catalogproducts.dart';
import 'package:get/get.dart';

class CatalogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CatalogScreen"),
      ),
      body: Column(
        children: [
          CatalogProducts(),
          FloatingActionButton.extended(
            onPressed: () {
              Get.to(() => CartScreen());
            },
            label: Text("Goto Cart"),
          ),
        ],
      ),
    );
  }
}
