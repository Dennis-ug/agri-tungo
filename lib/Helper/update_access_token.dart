import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';
import '../Provider/SettingProvider.dart';
import '../Provider/UserProvider.dart';
import 'Constant.dart';
import 'Session.dart';
import 'String.dart';

Future<void>  getNewToken(BuildContext context, refreshFunction) async {
  String? sessionid,accesstoken,refreshtoken;
  var json = utf8.encode(jsonEncode(refreshToken));
  Response response = await patch(updateUserSessionApi, headers: headers, body: json)
      .timeout(const Duration(seconds: timeOut));
  var getdata = jsonDecode(response.body);
  if (response.statusCode == 401) {

  } else {
    var data = getdata['data'];
    sessionid = data[SESSION_ID].toString();
    accesstoken = data[ACCESS_TOKEN];
    refreshtoken = data[REFRESH_TOKEN];
    UserProvider userProvider =
    Provider.of<UserProvider>(context, listen: false);
    userProvider.setAccessToken(accesstoken ?? '');
    userProvider.setRefreshToken(refreshtoken ?? '');
    SettingProvider settingProvider =
    Provider.of<SettingProvider>(context, listen: false);
    settingProvider.saveUserDetail(sessionid!, CUR_FIRST_NAME,CUR_LAST_NAME,
        accesstoken, refreshtoken, CUR_MOBILE, CUR_STATUS,CUR_IMAGE, context);
      return refreshFunction();
  }
}