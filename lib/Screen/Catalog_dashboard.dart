
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CatalogDashboard extends StatefulWidget {
  const CatalogDashboard({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return StateCatalogDashboard();
  }
}

class StateCatalogDashboard extends State<CatalogDashboard> with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery
        .of(context)
        .size
        .height;
    final screenwidth = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold();
  }
}