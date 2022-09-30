import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class FaqsProduct extends StatefulWidget {
  final String? id;

  const FaqsProduct(this.id, {Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return StateFaqsProduct();
  }
}

class StateFaqsProduct extends State<FaqsProduct> with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}