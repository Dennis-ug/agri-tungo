import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../Helper/Session.dart';
import '../Model/Section_Model.dart';
import '../Widgets/product_details_new.dart';
import '../model/Order_Model.dart';
import 'Review_Preview.dart';

class ReviewGallary extends StatefulWidget {
  final Product? productModel;
  final OrderModel? orderModel;
  final List<dynamic>? imageList;

  const ReviewGallary(
      {Key? key, this.productModel, this.orderModel, this.imageList})
      : super(key: key);

  @override
  _ReviewImageState createState() => _ReviewImageState();
}

class _ReviewImageState extends State<ReviewGallary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
