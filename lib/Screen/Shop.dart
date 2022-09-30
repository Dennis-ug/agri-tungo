import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../commerce/screens/home/home.dart';

class Shop extends StatefulWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Home();
  }
}
