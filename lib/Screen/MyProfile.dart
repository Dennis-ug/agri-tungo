import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:agritungotest/Helper/ApiBaseHelper.dart';
import 'package:agritungotest/Helper/Color.dart';
import 'package:agritungotest/Helper/Constant.dart';
import 'package:agritungotest/Helper/Session.dart';
import 'package:agritungotest/Helper/String.dart';
import 'package:agritungotest/Provider/FavoriteProvider.dart';
import 'package:agritungotest/Provider/SettingProvider.dart';
import 'package:agritungotest/Provider/Theme.dart';
import 'package:agritungotest/Provider/UserProvider.dart';
import 'package:agritungotest/Screen/Dashboard.dart';
import 'package:agritungotest/Screen/Setting.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:mime/mime.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../main.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => StateProfile();
}

class StateProfile extends State<MyProfile> with TickerProviderStateMixin {


  @override
  Widget build(BuildContext context) {
  return Scaffold();
  }
  }
