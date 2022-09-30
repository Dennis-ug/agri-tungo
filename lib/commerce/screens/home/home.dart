
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../network_models/categories.dart';
import '../const/colors.dart';
import '../const/responsivenes.dart';
import '../const/typo.dart';
import './sample_data.dart';
import 'home_contro.dart';
import 'pages/buyers.dart';
import 'pages/sell/sell.dart';
import 'pages/shop.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  final _contro = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    Responsive size = Responsive(context);
    return Scaffold(
      // appBar: AppBar(bottom: ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Container(
              height: size.getHyt(331),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: dumb_green,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: size.getHyt(60),
                  horizontal: size.getWyd(10),
                ).copyWith(bottom: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset('asset/svgs/drawer.svg'),
                        Expanded(
                          child: Center(
                            child: Text(
                              'Agri Shop',
                              style: bold.copyWith(
                                fontSize: size.getHyt(18),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: size.getWyd(10)),
                          child:
                              SvgPicture.asset('asset/svgs/shopping-cart.svg'),
                        ),
                        SvgPicture.asset('asset/svgs/bell.svg')
                      ],
                    ),
                    SizedBox(
                      height: size.getHyt(30),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: size.getHyt(42),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: const Color(0xffF1F1F1),
                              borderRadius: BorderRadius.circular(9),
                            ),
                            child: Center(
                              child: TextField(
                                decoration: InputDecoration(
                                  prefixIcon: const Icon(
                                    Icons.search,
                                    color: Color(0xffB8B8B8),
                                  ),
                                  border: InputBorder.none,
                                  hintText: 'Search Item',
                                  hintStyle: GoogleFonts.poppins(
                                    color: const Color(0xff747474),
                                    fontWeight: FontWeight.w400,
                                    fontSize: size.getHyt(11),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: size.getWyd(10)),
                          child: SvgPicture.asset('asset/svgs/filter.svg'),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: size.getHyt(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Shop by category',
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: size.getHyt(14)),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: size.getHyt(15),
                          )
                        ],
                      ),
                    ),
                    FutureBuilder<Categories>(
                        future: _contro.getCategories(),
                        builder: (context, AsyncSnapshot<Categories> snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return Text("Loading categories");
                          } else if (snapshot.hasData) {
                            return Expanded(
                              child: AnimatedList(
                                initialItemCount:
                                    snapshot.data!.data.rowsReturned,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (cnx, ind, annime) => Padding(
                                  padding:
                                      EdgeInsets.only(left: ind != 0 ? 20 : 0),
                                  child: Column(
                                    // crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                          padding: const EdgeInsets.all(10),
                                          height: size.getHyt(66),
                                          width: size.getHyt(66),
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                          ),
                                          child: SvgPicture.network(
                                            snapshot.data!.data.categories[ind]
                                                .icon,
                                            color: dumb_green,
                                          )
                                          //     Image.asset(
                                          //   cats[snapshot
                                          //           .data!.data.categories
                                          //           .indexOf(cat)]
                                          //       .img,
                                          //   height: 25,
                                          // ),
                                          ),
                                      SizedBox(
                                        height: size.getHyt(8),
                                      ),
                                      Text(
                                        snapshot
                                            .data!.data.categories[ind].name,
                                        style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          } else {
                            return Text('Failed get categories');
                          }
                        }),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: List.generate(
                    //     cats.length,
                    //     (index) =>fin
                    //   ),
                    // ),
                    SizedBox(
                      height: size.getHyt(15),
                    ),
                    SizedBox(
                      width: 80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(
                          4,
                          (index) => Container(
                            height: size.getHyt(8),
                            width: size.getHyt(8),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: size.getHyt(50),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 4),
                    blurRadius: 3,
                    color: Colors.black.withOpacity(0.08),
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  tabs.length,
                  (index) => SizedBox(
                    width: 100,
                    child: Obx(
                      (() => GestureDetector(
                            onTap: () {
                              _contro.currentTab.value = index;
                              _contro.changePage();
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  tabs[index],
                                  style: GoogleFonts.poppins(
                                    color: _contro.currentTab.value == index
                                        ? const Color(0xff73B41A)
                                        : const Color(0xff747474),
                                    fontWeight: FontWeight.w600,
                                    fontSize: size.getHyt(12),
                                  ),
                                ),
                                SizedBox(
                                  height: size.getHyt(10),
                                ),
                                AnimatedContainer(
                                  height: 5,
                                  width: _contro.currentTab.value == index
                                      ? size.getWyd(100)
                                      : 0,
                                  decoration: const BoxDecoration(
                                    color: Color(0xff73B41A),
                                  ),
                                  duration: const Duration(milliseconds: 300),
                                )
                              ],
                            ),
                          )),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.getWyd(10)),
              child: Column(
                children: [
                  SizedBox(
                    height: size.getHyt(10),
                  ),
                  SizedBox(
                    height: size.getHyt(418),
                    child: PageView(
                      onPageChanged: ((value) =>
                          _contro.currentTab.value = value),
                      controller: _contro.pageController,
                      children: [
                        Shop(),
                        const Buyers(),
                        Sell(),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
