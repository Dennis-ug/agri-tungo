
import'dart:core';

import 'package:agritungotest/Helper/ApiBaseHelper.dart';

import 'package:agritungotest/Model/Model.dart';
import 'package:agritungotest/Model/Section_Model.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

// List<SectionModel> sectionList = [];
// List<Product> catList = [];
// List<Product> popularList = [];
// ApiBaseHelper apiBaseHelper = ApiBaseHelper();
// List<String> tagList = [];
// List<Product> sellerList = [];
// int count = 1;
// List<Model> homeSliderList = [];
// List<Widget> pages = [];
// final symbolTemp='°C';

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin<HomePage>, TickerProviderStateMixin {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => throw UnimplementedError();

}