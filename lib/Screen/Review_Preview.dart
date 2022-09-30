import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

import '../Helper/Session.dart';
import '../Model/Section_Model.dart';
import '../Model/User.dart';
import 'package:agritungotest/Helper/Color.dart';

import '../Widgets/product_details_new.dart';

class ReviewPreview extends StatefulWidget {
  final int? index;
  final Product? productModel;
  final List<dynamic>? imageList;

  const ReviewPreview({Key? key, this.index, this.productModel, this.imageList})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => StatePreview();
}

class StatePreview extends State<ReviewPreview> {
  int? curPos;
  bool flag = true;
  User? model;

  @override
  void initState() {
    super.initState();
    curPos = widget.index;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    );
  }
}
