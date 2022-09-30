import 'dart:async';
import 'dart:convert';
import 'package:agritungotest/Helper/Color.dart';
import 'package:agritungotest/Helper/Session.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import '../Helper/AppBtn.dart';
import '../Helper/Constant.dart';
import '../Helper/SimBtn.dart';
import '../Helper/String.dart';
import '../Model/Section_Model.dart';
import '../Provider/CartProvider.dart';
import 'Cart.dart';

class PromoCode extends StatefulWidget {
  final String from;
  final Function? updateParent;

  const PromoCode({Key? key, required this.from, this.updateParent})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => StatePromoCode();
}

class StatePromoCode extends State<PromoCode> with TickerProviderStateMixin {

  Widget build(BuildContext context) {
    deviceHeight = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold();
  }
}
