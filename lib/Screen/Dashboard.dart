import 'dart:async';
import 'dart:convert';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:http/http.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import '../Helper/Constant.dart';
import '../Helper/Session.dart';
import '../Helper/String.dart';
import '../Model/Section_Model.dart';
import '../Provider/Theme.dart';
import '../Widgets/product_details_new.dart';
import 'Cart.dart';
import 'Explore.dart';
import 'Favorite.dart';
import 'HomePage.dart';
import 'MyProfile.dart';
import 'NotificationLIst.dart';
import 'package:agritungotest/Helper/Color.dart';
import 'package:agritungotest/Provider/HomeProvider.dart';
import 'Shop.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Dashboard> with TickerProviderStateMixin {
  int _selBottom = 0;
  late TabController _tabController;
  bool _isNetworkAvail = true;

  late StreamSubscription streamSubscription;

  late AnimationController navigationContainerAnimationController =
  AnimationController(
    vsync: this, // the SingleTickerProviderStateMixin
    duration: const Duration(milliseconds: 200),
  );

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom]);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ));

    _tabController = TabController(
      length: 5,
      vsync: this,
    );

    // final pushNotificationService = PushNotificationService(
    //     context: context, tabController: _tabController);
    // pushNotificationService.initialise();

    _tabController.addListener(
          () {
        Future.delayed(const Duration(seconds: 0)).then(
              (value) {},
        );

        setState(
              () {
            _selBottom = _tabController.index;
          },
        );
        if (_tabController.index == 3) {
        }
      },
    );

    Future.delayed(Duration.zero, () {
      context.read<HomeProvider>()
        ..setAnimationController(navigationContainerAnimationController)
        ..setBottomBarOffsetToAnimateController(
            navigationContainerAnimationController)
        ..setAppBarOffsetToAnimateController(
            navigationContainerAnimationController);
    });
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (_tabController.index != 0) {
          _tabController.animateTo(0);
          return false;
        }
        return true;
      },
      child: Scaffold(
        extendBodyBehindAppBar: false,
        extendBody: true,
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .lightWhite,
        appBar: _selBottom == 0
            ? _getAppBar()
            : PreferredSize(preferredSize: Size.zero, child: Container()),
        body: SafeArea(
          child: TabBarView(
            controller: _tabController,
            children: const [
              HomePage(),
              Shop(),
              //Sale(),
              Explore(),
              Cart(fromBottom: true,),
              MyProfile(),
            ],
          ),
        ),
        bottomNavigationBar: _getBottomBar(),
      ),
    );
  }

  // _getAppBar() {
  //   String? title;
  //   // print("navigation$_selBottom");
  //   if (_selBottom == 1) {
  //     title = getTranslated(context, 'SHOP');
  //   } else if (_selBottom == 2) {
  //     title = getTranslated(context, 'CATEGORY');
  //   } else if (_selBottom == 3) {
  //     title = getTranslated(context, 'MYBAG');
  //   } else if (_selBottom == 4) {
  //     title = getTranslated(context, 'PROFILE');
  //   }
  //   final appBar = AppBar(
  //     elevation: 0,
  //     toolbarHeight: 100,
  //     centerTitle: false,
  //     backgroundColor: Theme
  //         .of(context)
  //         .colorScheme
  //         .primary,
  //     title: _selBottom == 0
  //         ? Container(
  //       margin: EdgeInsets.only(top: 10, bottom: 5),
  //       width: double.infinity,
  //       // height: 40,
  //       decoration: BoxDecoration(
  //         color: Theme.of(context).colorScheme.lightWhite,
  //         borderRadius: BorderRadius.circular(5),),
  //       child: GestureDetector(
  //         onTap: () async {
  //           //showOverlaySnackBar(context, Colors.amber, "message",50 );
  //           await Navigator.push(
  //               context,
  //               CupertinoPageRoute(
  //                 builder: (context) => const Search(),
  //               ));
  //         },
  //         child: TextFormField(
  //           enabled: false,
  //           textAlign: TextAlign.left,
  //           decoration: InputDecoration(
  //               focusedBorder: OutlineInputBorder(
  //                 borderSide: BorderSide(
  //                     color: Theme.of(context).colorScheme.lightWhite),
  //                 borderRadius: const BorderRadius.all(
  //                   Radius.circular(5.0),
  //                 ),
  //               ),
  //               enabledBorder: const OutlineInputBorder(
  //                 borderSide: BorderSide(color: Colors.transparent),
  //                 borderRadius: BorderRadius.all(
  //                   Radius.circular(5.0),
  //                 ),
  //               ),
  //               contentPadding: const EdgeInsets.fromLTRB(15.0, 5.0, 0, 5.0),
  //               border: const OutlineInputBorder(
  //                 borderSide: BorderSide(color: Colors.transparent),
  //                 borderRadius: BorderRadius.all(
  //                   Radius.circular(5.0),
  //                 ),
  //               ),
  //               isDense: true,
  //               hintText: getTranslated(context, 'searchHint'),
  //               hintStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
  //                   color: Theme.of(context).colorScheme.fontColor,
  //                   fontSize: textFontSize16,
  //                   fontWeight: FontWeight.w500,
  //                   fontStyle: FontStyle.normal,
  //                   fontFamily: "ubuntu"
  //               ),
  //               // prefixIcon: const Padding(
  //               //     padding: EdgeInsets.all(15.0), child: Icon(Icons.search)),
  //               suffixIcon: Selector<ThemeNotifier, ThemeMode>(
  //                   selector: (_, themeProvider) =>
  //                       themeProvider.getThemeMode(),
  //                   builder: (context, data, child) {
  //                     return Padding(
  //                       padding: const EdgeInsets.all(10.0),
  //                       child: (data == ThemeMode.system &&
  //                           MediaQuery.of(context).platformBrightness ==
  //                               Brightness.light) ||
  //                           data == ThemeMode.light
  //                           ? SvgPicture.asset(
  //                         '${imagePath}fav_black.svg',
  //                         height: 10,
  //                         width: 10,
  //                       )
  //                           : SvgPicture.asset(
  //                         '${imagePath}voice_search_white.svg',
  //                         height: 15,
  //                         width: 15,
  //                       ),
  //                     );
  //                   }),
  //               fillColor: Theme.of(context).colorScheme.white,
  //               filled: true),
  //         ),
  //       ),
  //     )
  //         : Text(
  //       title!,
  //       style: const TextStyle(
  //         color: colors.primary,
  //         fontWeight: FontWeight.normal,
  //       ),
  //     ),
  //
  //   );
  //   return PreferredSize(
  //       preferredSize: appBar.preferredSize,
  //       child: SlideTransition(
  //         position: context.watch<HomeProvider>().animationAppBarBarOffset,
  //         child: SizedBox(
  //             height: context.watch<HomeProvider>().getBars ? 100 : 0,
  //             child: appBar),
  //       ));
  // }

  _getAppBar() {
    String? title;
    if (_selBottom == 1) {
      title = getTranslated(context, 'SHOP');
    } else if (_selBottom == 2) {
      title = getTranslated(context, 'CATEGORY');
    } else if (_selBottom == 3) {
      title = getTranslated(context, 'MYBAG');
    } else if (_selBottom == 4) {
      title = getTranslated(context, 'PROFILE');
    }
    final appBar = AppBar(
      elevation: 0,
      centerTitle: false,
      backgroundColor: Theme.of(context).colorScheme.lightWhite,
      title: _selBottom == 0
          ? SvgPicture.asset(
        'assets/images/titleicon.svg',
        height: 40,
      )
          : Text(
        title!,
        style: const TextStyle(
          color: colors.primary,
          fontWeight: FontWeight.normal,
        ),
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsetsDirectional.only(
              end: 10.0, bottom: 10.0, top: 10.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(circularBorderRadius10),
              color: Theme.of(context).colorScheme.white,
            ),
            width: 40,
            child: IconButton(
              icon: SvgPicture.asset('${imagePath}fav_black.svg',
                  color: Theme.of(context)
                      .colorScheme
                      .black // Add your color here to apply your own color
              ),
              onPressed: () {
                // Navigator.push(
                //     context,
                //     CupertinoPageRoute(
                //       builder: (context) => const Favorite(),
                //     ));
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(
              end: 10.0, bottom: 10.0, top: 10.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(circularBorderRadius10),
              color: Theme.of(context).colorScheme.white,
            ),
            width: 40,
            child: IconButton(
              icon: SvgPicture.asset(
                '${imagePath}notification_black.svg',
                color: Theme.of(context)
                    .colorScheme
                    .black, // Add your color here to apply your own color
              ),
              onPressed: () {
                // CUR_USERID != null
                //     ? Navigator.push(
                //     context,
                //     CupertinoPageRoute(
                //       builder: (context) => const NotificationList(),
                //     )).then((value) {
                //   if (value != null && value) {
                //     _tabController.animateTo(1);
                //   }
                // })
                //     : Navigator.push(
                //     context,
                //     CupertinoPageRoute(
                //       builder: (context) => const Login(),
                //     ));
              },
            ),
          ),
        ),
      ],
    );

    /*return PreferredSize(
      preferredSize: appBar.preferredSize,
      child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          height: context.watch<HomeProvider>().getBars ? 100 :0,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.white,
            boxShadow: [
              BoxShadow(
                  color: Theme.of(context).colorScheme.black26,
                  blurRadius: 10)
            ],
          ),
          child: appBar),
    );*/
    return PreferredSize(
        preferredSize: appBar.preferredSize,
        child: SlideTransition(
          position: context.watch<HomeProvider>().animationAppBarBarOffset,
          child: SizedBox(
              height: context.watch<HomeProvider>().getBars ? 100 : 0,
              child: appBar),
        ));
    return SlideTransition(
      position: context.watch<HomeProvider>().animationAppBarBarOffset,
      child: Container(
        height: 75,
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child: Row(),
      ),
    );
  }


//tab item enanable disable function
  getTabItem(String enabledImage, String disabledImage, int selectedIndex,
      String name) {
    return Wrap(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: SizedBox(
                height: 25,
                child: _selBottom == selectedIndex
                    ? Lottie.asset('assets/animation/$enabledImage',
                    repeat: false, height: 25)
                    : SvgPicture.asset(imagePath + disabledImage,
                    color: Colors.grey, height: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Text(getTranslated(context, name)!,
                  style: TextStyle(
                      color: _selBottom == selectedIndex
                          ? Theme.of(context).colorScheme.fontColor
                          : Theme.of(context).colorScheme.lightBlack,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 10.0),
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis),
            )
          ],
        ),
      ],
    );
  }

  //botoom navigation menu
  Widget _getBottomBar() {
    Brightness currentBrightness = MediaQuery.of(context).platformBrightness;
    return SlideTransition(
      position: context.watch<HomeProvider>().animationNavigationBarOffset,
      child: Container(
        height: context.watch<HomeProvider>().getBars
            ? kBottomNavigationBarHeight
            : 0,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.white,
          boxShadow: [
            BoxShadow(
                color: Theme.of(context).colorScheme.black26, blurRadius: 5)
          ],
        ),
        child: Selector<ThemeNotifier, ThemeMode>(
            selector: (_, themeProvider) => themeProvider.getThemeMode(),
            builder: (context, data, child) {
              return TabBar(
                controller: _tabController,
                tabs: [
                  Tab(
                    child: getTabItem(
                        (data == ThemeMode.system &&
                            currentBrightness == Brightness.dark) ||
                            data == ThemeMode.dark
                            ? 'dark_active_home.json'
                            : 'light_active_home.json',
                        'home.svg',
                        0,
                        'HOME_LBL'),
                  ),
                  Tab(
                    child: getTabItem(
                        (data == ThemeMode.system &&
                            currentBrightness == Brightness.dark) ||
                            data == ThemeMode.dark
                            ? 'dark_active_category.json'
                            : 'light_active_category.json',
                        'category.svg',
                        1,
                        'SHOP'),
                  ),
                  Tab(
                    child: getTabItem(
                        (data == ThemeMode.system &&
                            currentBrightness == Brightness.dark) ||
                            data == ThemeMode.dark
                            ? 'dark_active_explorer.json'
                            : 'light_active_explorer.json',
                        'brands.svg',
                        2,
                        'CATEGORY'),
                  ),
                  Tab(
                    child: getTabItem(
                        (data == ThemeMode.system &&
                            currentBrightness == Brightness.dark) ||
                            data == ThemeMode.dark
                            ? 'dark_active_cart.json'
                            : 'light_active_cart.json',
                        'cart.svg',
                        3,
                        'CART'),
                  ),
                  Tab(
                    child: getTabItem(
                        (data == ThemeMode.system &&
                            currentBrightness == Brightness.dark) ||
                            data == ThemeMode.dark
                            ? 'dark_active_profile.json'
                            : 'light_active_profile.json',
                        'profile.svg',
                        4,
                        'PROFILE'),
                  ),
                ],
                indicatorColor: Colors.transparent,
                labelColor: colors.primary,
                labelStyle: const TextStyle(fontSize: textFontSize12),
              );
            }),
      ),
    );
  }
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
