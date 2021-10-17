import 'package:flutter/material.dart';
import 'package:flutter_get_firestore/models/productmodel.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  final _products = {}.obs;

  //addproduct
  void addProduct(Product product) {
    if (_products.containsKey(product)) {
      _products[product] += 1;
    } else {
      _products[product] = 1;
    }
    Get.snackbar('${product.name} added', 'On your cart',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.blue,
        colorText: Colors.white);
  }

  //removeProduct
  void removerprodcut(Product product) {
    if (_products.containsKey(product) && _products[product] == 1) {
      _products.removeWhere((key, value) => key == product);
    } else {
      _products[product] -= 1;
    }
  }

  //get product

  get products => _products;
}
