
import 'package:agritungotest/model/Section_Model.dart';
import 'package:flutter/material.dart';

class ShopProvider extends ChangeNotifier {
  String view = 'GridView';
  String totalProducts = '0';

  get getCurrentView => view;

  changeViewTo(String view) {
    this.view = view;
    notifyListeners();
  }

  get getTotalProducts => totalProducts;

  setProductTotal(String total) {
    totalProducts = total;
    notifyListeners();
  }
}