// import 'package:agri_commerce/screens/const/colors.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';

// import '../const/responsivenes.dart';
// import '../home/sample_data.dart';
// import '../payment_method/payment_methods.dart';
// import '../widgets.dart/cust_widget.dart';

// class Cart extends StatelessWidget {
//   const Cart({Key? key}) : super(key: key);
//   // final _contro = Get.put(CartController());

//   @override
//   Widget build(BuildContext context) {
//     Responsive size = Responsive(context);
//     final Color textColor = Color(0xff747474);
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(15).copyWith(top: size.getHyt(40)),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             CustAppbar(
//               size: size,
//               title: 'My Cart',
//             ),
//             SizedBox(
//               height: size.getHyt(20),
//             ),
//             GreenCard(size: size, textColor: textColor),
//             SizedBox(
//               height: size.getHyt(20),
//             ),
//             Text(
//               'Products in your Cart: 2',
//               style: GoogleFonts.poppins(
//                   fontWeight: FontWeight.w600,
//                   fontSize: size.getHyt(12),
//                   color: textColor),
//             ),
//             SizedBox(
//               height: size.getHyt(10),
//             ),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: prods.length,
//                 itemBuilder: (context, index) {
//                   return Padding(
//                     padding: const EdgeInsets.only(top: 8.0),
//                     child: Container(
//                       padding: const EdgeInsets.all(10),
//                       height: size.getHyt(100),
//                       width: double.infinity,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(5),
//                         color: Colors.white,
//                         boxShadow: [
//                           BoxShadow(
//                             offset: const Offset(0, 0),
//                             color: Colors.black.withOpacity(0.1),
//                             blurRadius: 4,
//                           )
//                         ],
//                       ),
//                       child: Row(
//                         children: [
//                           Image.asset(
//                             prods[index].img,
//                             width: 40,
//                           ),
//                           Expanded(
//                             child: Padding(
//                               padding: EdgeInsets.symmetric(
//                                 horizontal: size.getWyd(5),
//                               ),
//                               child: Column(
//                                 // crossAxisAlignment: CrossAxisAlignment.,
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceEvenly,
//                                 children: [
//                                   Row(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceBetween,
//                                     children: [
//                                       Text(
//                                         prods[index].name,
//                                         style: GoogleFonts.poppins(
//                                           fontWeight: FontWeight.w600,
//                                           fontSize: size.getHyt(11),
//                                           color: textColor,
//                                         ),
//                                       ),
//                                       Container(
//                                         decoration: BoxDecoration(
//                                           borderRadius:
//                                               BorderRadius.circular(3),
//                                           color: dumb_green,
//                                         ),
//                                         child: Padding(
//                                           padding: const EdgeInsets.all(3),
//                                           child: Icon(
//                                             Icons.close,
//                                             color: Colors.white,
//                                             size: size.getHyt(11),
//                                           ),
//                                         ),
//                                       )
//                                     ],
//                                   ),
//                                   Row(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceBetween,
//                                     children: [
//                                       Text(
//                                         'Price per unit UGX. ${prods[index].ammount}',
//                                         style: GoogleFonts.poppins(
//                                           fontWeight: FontWeight.w400,
//                                           fontSize: size.getHyt(11),
//                                           color: textColor,
//                                         ),
//                                       ),
//                                       Text(
//                                         '34,000',
//                                         style: GoogleFonts.poppins(
//                                           fontWeight: FontWeight.w600,
//                                           fontSize: size.getHyt(11),
//                                           color: textColor,
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                   Row(
//                                     mainAxisAlignment: MainAxisAlignment.end,
//                                     children: [
//                                       Container(
//                                         decoration: BoxDecoration(
//                                           color: dumb_green,
//                                           borderRadius:
//                                               BorderRadius.circular(3),
//                                         ),
//                                         child: Center(
//                                           child: Icon(
//                                             Icons.remove,
//                                             color: Colors.white,
//                                             size: size.getHyt(11),
//                                           ),
//                                         ),
//                                       ),
//                                       const Padding(
//                                         padding: EdgeInsets.symmetric(
//                                             horizontal: 8.0),
//                                         child: const Text('3'),
//                                       ),
//                                       Container(
//                                         decoration: BoxDecoration(
//                                           borderRadius:
//                                               BorderRadius.circular(3),
//                                           color: dumb_green,
//                                         ),
//                                         child: Center(
//                                           child: Icon(
//                                             Icons.add,
//                                             color: Colors.white,
//                                             size: size.getHyt(11),
//                                           ),
//                                         ),
//                                       )
//                                     ],
//                                   )
//                                 ],
//                               ),
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//             GestureDetector(
//               onTap: () {
//                 Get.to(PaymentMethods());
//               },
//               child: Container(
//                 decoration: BoxDecoration(
//                     color: dumb_green,
//                     borderRadius: BorderRadius.circular(13),
//                     boxShadow: [
//                       BoxShadow(
//                         offset: const Offset(10, 8),
//                         blurRadius: 20,
//                         color: const Color(0xff014DAD).withOpacity(0.3),
//                       )
//                     ]),
//                 height: size.getHyt(56),
//                 width: size.getWyd(312),
//                 child: Center(
//                   child: Text(
//                     'Proceed',
//                     style: GoogleFonts.poppins(
//                       fontWeight: FontWeight.w700,
//                       fontSize: size.getHyt(14),
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: size.getHyt(40),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class GreenCard extends StatelessWidget {
//   const GreenCard({
//     Key? key,
//     required this.size,
//     required this.textColor,
//   }) : super(key: key);

//   final Responsive size;
//   final Color textColor;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(
//         horizontal: size.getWyd(5),
//         vertical: size.getHyt(15),
//       ),
//       decoration: BoxDecoration(
//           color: const Color(0xff73B41A).withOpacity(0.17),
//           borderRadius: BorderRadius.circular(5)),
//       width: double.infinity,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Row(
//                 children: [
//                   const Icon(
//                     Icons.location_on,
//                     color: dumb_green,
//                   ),
//                   Text(
//                     'Your Address',
//                     style: GoogleFonts.poppins(
//                       color: textColor,
//                       fontWeight: FontWeight.w600,
//                       fontSize: size.getHyt(12),
//                     ),
//                   ),
//                 ],
//               ),
//               Row(
//                 children: [
//                   Text(
//                     'Change Address ',
//                     style: GoogleFonts.poppins(
//                       color: dumb_green,
//                       fontSize: size.getHyt(12),
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                   SvgPicture.asset(
//                     'asset/svgs/edit_square_FILL0_wght400_GRAD0_opsz48.svg',
//                     color: dumb_green,
//                     height: size.getHyt(13),
//                   )
//                 ],
//               )
//             ],
//           ),
//           Text(
//             'Block 16, Msafiri drive, Mbarara Uganda',
//             style: GoogleFonts.poppins(
//               fontSize: size.getHyt(11),
//               fontWeight: FontWeight.w400,
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
