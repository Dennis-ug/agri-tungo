import 'dart:async';
import 'dart:io';
import'dart:core';
import 'package:agritungotest/Helper/Color.dart';
import 'package:agritungotest/Widgets/star_rating.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:http/http.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shimmer/shimmer.dart';
import 'package:tuple/tuple.dart';
import 'package:url_launcher/url_launcher.dart';
import '../Helper/ApiBaseHelper.dart';
import '../Helper/Constant.dart';
import '../Helper/Session.dart';
import '../Helper/SqliteData.dart';
import '../Helper/String.dart';
import '../Model/FaqsModel.dart';
import '../Model/Section_Model.dart';
import '../Model/User.dart';
import '../Provider/CartProvider.dart';
import '../Provider/FavoriteProvider.dart';
import '../Provider/HomeProvider.dart';
import '../Provider/ProductDetailProvider.dart';
import '../Provider/UserProvider.dart';
import '../Helper/AppBtn.dart';
import '../Screen/Cart.dart';
import '../Screen/CompareList.dart';
import '../Screen/FaqsProduct.dart';
import '../Screen/Favorite.dart';
// import '../Screen/HomePage.dart';
import '../Screen/HomePage.dart';
import '../Screen/Product_Preview.dart';
import '../Screen/Review_Gallery.dart';
import '../Screen/Review_List.dart';
import '../Screen/Review_Preview.dart';
import '../Screen/Search.dart';
import '../Helper/SimBtn.dart';
import '../Screen/seller_details.dart';
class ProductDetail1 extends StatefulWidget {
  final Product? model;
  final int secPos, index;
  final bool list;

  const ProductDetail1(
      {Key? key,  this.model, required this.secPos, required this.index, required this.list})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => StateItem();
}


class StateItem extends State<ProductDetail1> with TickerProviderStateMixin {


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

    return Scaffold();
  }
}