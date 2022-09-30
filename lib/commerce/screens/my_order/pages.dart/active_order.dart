// import 'package:agri_commerce/screens/const/colors.dart';
// import 'package:agri_commerce/screens/home/sample_data.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// import '../../const/responsivenes.dart';

// class Activeorders extends StatelessWidget {
//   Activeorders({Key? key}) : super(key: key);
//   final List<Map<String, String>> _shipStatus = [
//     {
//       'title': 'Order Processing',
//       'date': 'Mon, 30th Jan 2022',
//     },
//     {
//       'title': 'Packed',
//       'date': 'Mon, 30th Jan 2022',
//     },
//     {
//       'title': 'Shipped',
//       'date': 'Mon, 30th Jan 2022',
//     },
//     {
//       'title': 'Delivered',
//       'date': 'Mon, 30th Jan 2022',
//     }
//   ];
//   @override
//   Widget build(BuildContext context) {
//     Responsive size = Responsive(context);
//     // Product item = prods[0];

//     return Column(
//       children: [
//         Padding(
//           padding: EdgeInsets.symmetric(
//             horizontal: size.getWyd(10),
//           ),
//           child: Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(5),
//               color: Colors.white,
//               boxShadow: [
//                 BoxShadow(
//                   blurRadius: 10,
//                   color: Colors.black.withOpacity(0.25),
//                 ),
//               ],
//             ),
//             child: Padding(
//               padding: EdgeInsets.symmetric(
//                 vertical: size.getHyt(20),
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.symmetric(
//                       horizontal: size.getWyd(10),
//                     ),
//                     child: Row(
//                       children: [
//                         Image.asset(
//                           item.img,
//                           height: size.getHyt(70),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.only(
//                             left: size.getWyd(6),
//                           ),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 item.name,
//                                 style: GoogleFonts.poppins(
//                                   fontWeight: FontWeight.w600,
//                                   fontSize: size.getHyt(11),
//                                   color: textColor,
//                                 ),
//                               ),
//                               Text(
//                                 'Package out for delivery',
//                                 style: GoogleFonts.poppins(
//                                   fontWeight: FontWeight.w600,
//                                   fontSize: size.getHyt(12),
//                                   color: dumb_green,
//                                 ),     
//                               ),
//                               Text(
//                                 'Delivery OTP: 14525',
//                                 style: GoogleFonts.poppins(
//                                   fontWeight: FontWeight.w600,
//                                   fontSize: size.getHyt(11),
//                                   color: textColor,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                   const Divider(
//                     thickness: 1.5,
//                     color: Color(
//                       0xffE2E2E2,
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.symmetric(
//                       horizontal: size.getWyd(10),
//                     ),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               'Order Number',
//                               style: GoogleFonts.poppins(
//                                 fontWeight: FontWeight.w400,
//                                 fontSize: size.getHyt(11),
//                                 color: textColor,
//                               ),
//                             ),
//                             Text(
//                               '2450250',
//                               style: GoogleFonts.poppins(
//                                 fontWeight: FontWeight.w600,
//                                 fontSize: size.getHyt(11),
//                                 color: textColor,
//                               ),
//                             ),
//                           ],
//                         ),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               'Estimated Delivery',
//                               style: GoogleFonts.poppins(
//                                 fontWeight: FontWeight.w400,
//                                 fontSize: size.getHyt(11),
//                                 color: textColor,
//                               ),
//                             ),
//                             Text(
//                               '1st February, 2022',
//                               style: GoogleFonts.poppins(
//                                 fontWeight: FontWeight.w600,
//                                 fontSize: size.getHyt(11),
//                                 color: textColor,
//                               ),
//                             ),
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                   const Divider(
//                     thickness: 1.5,
//                     color: Color(
//                       0xffE2E2E2,
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.symmetric(
//                       horizontal: size.getWyd(10),
//                     ),
//                     child: Column(
//                       children: List.generate(
//                         4,
//                         (index) => Row(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Column(
//                               children: [
//                                 Container(
//                                   decoration: BoxDecoration(
//                                     color: index < 2
//                                         ? dumb_green
//                                         : const Color(0xff747474),
//                                     shape: BoxShape.circle,
//                                   ),
//                                   child: const Padding(
//                                     padding: EdgeInsets.all(4),
//                                     child: Icon(
//                                       Icons.check,
//                                       color: Colors.white,
//                                       size: 15,
//                                     ),
//                                   ),
//                                 ),
//                                 index != 3
//                                     ? Container(
//                                         height: size.getHyt(35),
//                                         width: 4,
//                                         decoration: BoxDecoration(
//                                           color: index < 2
//                                               ? dumb_green
//                                               : const Color(0xff747474),
//                                         ),
//                                       )
//                                     : const SizedBox()
//                               ],
//                             ),
//                             Padding(
//                               padding: EdgeInsets.only(left: size.getWyd(6)),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     _shipStatus[index]['title'] ?? '',
//                                     style: GoogleFonts.poppins(
//                                       fontWeight: FontWeight.w600,
//                                       fontSize: size.getHyt(11),
//                                       color: textColor,
//                                     ),
//                                   ),
//                                   Text(
//                                     _shipStatus[index]['date'] ?? '',
//                                     style: GoogleFonts.poppins(
//                                       fontWeight: FontWeight.w400,
//                                       fontSize: size.getHyt(11),
//                                       color: textColor,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                   // SizedBox(
//                   //   height: size.getHyt(20),
//                   // )
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
