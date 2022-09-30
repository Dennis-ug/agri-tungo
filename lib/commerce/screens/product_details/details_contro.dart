// import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:hive_flutter/hive_flutter.dart';

import '../../hives/box.dart';
import '../../hives/cart_hive.dart';

class ProductsDetilsControl extends GetxController {
  var qty = 0.obs;

  @override
  void onInit() {
    qty.value = 0;

    super.onInit();
  }

  // Future<void> addTocart(ProductHive product) async {
  //   final Box cart = Hive.box<ProductHive>(cartbox);
  //   try {
  //     await cart.add(product);
  //   } catch (e) {
  //     debugPrint(e.toString());
  //   }
  // }
}
