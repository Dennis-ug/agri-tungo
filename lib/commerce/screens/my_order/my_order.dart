// import 'package:agri_commerce/screens/my_order/contro.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';

// import '../const/responsivenes.dart';
// import '../widgets.dart/cust_widget.dart';
// import 'pages.dart/active_order.dart';
// import 'pages.dart/past_orders.dart';

// class MyOrder extends StatelessWidget {
//   MyOrder({Key? key}) : super(key: key);
//   final _contro = Get.put(MyOrderController());

//   @override
//   Widget build(BuildContext context) {
//     Responsive size = Responsive(context);
//     List<String> tabs = ['Active Orders', 'Past Orders'];
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(0).copyWith(
//           top: size.getHyt(60),
//         ),
//         child: Column(
//           children: [
//             CustAppbar(
//               size: size,
//               title: 'My Orders',
//             ),
//             Container(
//               height: size.getHyt(50),
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 boxShadow: [
//                   BoxShadow(
//                     offset: const Offset(0, 4),
//                     blurRadius: 3,
//                     color: Colors.black.withOpacity(0.08),
//                   )
//                 ],
//               ),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: List.generate(
//                   tabs.length,
//                   (index) => SizedBox(
//                     width: 200,
//                     child: Obx(
//                       (() => GestureDetector(
//                             onTap: () {
//                               _contro.currentTab.value = index;
//                               _contro.changePage();
//                               // _contro.changePage();
//                             },
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.end,
//                               children: [
//                                 Text(
//                                   tabs[index],
//                                   style: GoogleFonts.poppins(
//                                     color: _contro.currentTab.value == index
//                                         ? const Color(0xff73B41A)
//                                         : const Color(0xff747474),
//                                     fontWeight: FontWeight.w600,
//                                     fontSize: size.getHyt(12),
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: size.getHyt(10),
//                                 ),
//                                 AnimatedContainer(
//                                   height: 5,
//                                   width: _contro.currentTab.value == index
//                                       ? size.getWyd(200)
//                                       : 0,
//                                   decoration: const BoxDecoration(
//                                     color: Color(0xff73B41A),
//                                   ),
//                                   duration: const Duration(milliseconds: 300),
//                                 )
//                               ],
//                             ),
//                           )),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: size.getHyt(20),
//             ),
//             SizedBox(
//               height: size.getHyt(518),
//               child: PageView(
//                 onPageChanged: ((value) => _contro.currentTab.value = value),
//                 controller: _contro.pageController,
//                 children: [Activeorders(), PastOrders()],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
