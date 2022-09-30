

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SellerProfile extends StatefulWidget {
  final String? sellerID,
      sellerName,
      sellerImage,
      sellerRating,
      storeDesc,
      sellerStoreName;

  const SellerProfile(
      {Key? key,
        this.sellerID,
        this.sellerName,
        this.sellerImage,
        this.sellerRating,
        this.storeDesc,
        this.sellerStoreName})
      : super(key: key);

  @override
  State<SellerProfile> createState() => _SellerProfileState();
}

class _SellerProfileState extends State<SellerProfile>
    with TickerProviderStateMixin {


  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}