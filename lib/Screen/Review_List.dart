
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Model/Section_Model.dart';

class ReviewList extends StatefulWidget {
  final String? id;
  final Product? model;

  const ReviewList(this.id, this.model, {Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return StateRate();
  }
}

class StateRate extends State<ReviewList> {

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }


}
