
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart'as http;
import '../Helper/AppBtn.dart';
import '../Helper/SimBtn.dart';
import '../Helper/String.dart';


class Cart extends StatefulWidget {
  final bool fromBottom;

  const Cart({Key? key, required this.fromBottom}) : super(key: key);

  @override
  State<StatefulWidget> createState() => StateCart();
}


class StateCart extends State<Cart> with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    deviceHeight = MediaQuery
        .of(context)
        .size
        .height;
    deviceWidth = MediaQuery
        .of(context)
        .size
        .width;
/*    hideAppbarAndBottomBarOnScroll(_scrollControllerOnCartItems, context);
    hideAppbarAndBottomBarOnScroll(
        _scrollControllerOnSaveForLaterItems, context);*/
    return Scaffold(
    );
  }

}