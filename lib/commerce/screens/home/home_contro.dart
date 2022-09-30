import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../network_models/categories.dart';
import '../../network_models/products.dart';

class HomeController extends GetxController {
  PageController pageController = PageController();
  var currentTab = 0.obs;
  void changePage() => pageController.animateToPage(
        currentTab.value,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeIn,
      );

  Future<Products> getProducts() async {
    late Products products;
    try {
      var request = http.Request(
        'GET',
        Uri.parse('https://api.v1.agritungo.com/API/shop/products'),
      );

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        final rawData = await response.stream.bytesToString();
        products = productsFromJson(rawData);
        // productsList = products.data.products;
      } else {
        debugPrint(response.reasonPhrase);
      }
    } catch (e) {
      printError(info: e.toString());
      // debugPrint(
      //   e.printError(),
      // );
    }

    return products;
  }

  Future<Categories> getCategories() async {
    late Categories categories;
    try {
      var request = http.Request(
          'GET', Uri.parse('https://api.v1.agritungo.com/API/shop/categories'));

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        final res = await response.stream.bytesToString();
        final cat = categoriesFromJson(res);
        categories = cat;
        debugPrint(res);
      } else {
        debugPrint(response.reasonPhrase);
      }
    } catch (e) {
      printError(
        info: e.toString(),
      );
    }
    return categories;
  }
}
