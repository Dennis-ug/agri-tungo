import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../const/colors.dart';
import '../const/responsivenes.dart';
import '../my_order/my_order.dart';
import '../widgets.dart/cust_widget.dart';
import 'controler.dart';

class PaymentMethods extends StatelessWidget {
  PaymentMethods({Key? key}) : super(key: key);
  final _controller = Get.put(PaymentMethodsController());

  @override
  Widget build(BuildContext context) {
    Responsive size = Responsive(context);
    List<String> paymentLogos = [
      'asset/payment logos/airtel_logo.png',
      'asset/payment logos/mtn_logo.png',
      'asset/payment logos/master_card.png',
      'asset/payment logos/visa.png'
    ];

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: size.getWyd(5),
        ).copyWith(
          top: size.getHyt(60),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustAppbar(
              size: size,
              title: 'Payment Method',
            ),
            SizedBox(
              height: size.getHyt(20),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: size.getWyd(
                  5,
                ),
              ),
              height: size.getHyt(41),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: dumb_green.withOpacity(
                  0.17,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Amount',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: size.getHyt(12),
                      color: textColor,
                    ),
                  ),
                  Text(
                    'UGX. 88,000',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: size.getHyt(12),
                      color: dumb_green,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: size.getHyt(20),
            ),
            Text(
              'Select Payment Method',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: size.getHyt(12),
                color: textColor,
              ),
            ),
            SizedBox(
              height: size.getHyt(20),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 0),
                      blurRadius: 4,
                      color: Colors.black.withOpacity(0.1),
                    )
                  ]),
              height: size.getHyt(77),
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    paymentLogos.length,
                    (index) => GestureDetector(
                      onTap: () => _controller.paymentOption.value = index,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Obx(
                            () => Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: _controller.paymentOption.value == index
                                    ? dumb_green
                                    : const Color(0xffE2E2E2),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(2),
                                child: Icon(
                                  Icons.check,
                                  color: Colors.white,
                                  size: 15,
                                ),
                              ),
                            ),
                          ),
                          Image.asset(
                            paymentLogos[index],
                            height: 40,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.getHyt(20),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: size.getWyd(
                  5,
                ),
              ),
              height: size.getHyt(41),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: dumb_green.withOpacity(
                  0.17,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Cash on Delivery',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: size.getHyt(12),
                      color: textColor,
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: dumb_green,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(2),
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(
              child: SizedBox(),
            ),
            GestureDetector(
              onTap: () {
                // Get.to(MyOrder());
              },
              child: Container(
                decoration: BoxDecoration(
                    color: dumb_green,
                    borderRadius: BorderRadius.circular(13),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(10, 8),
                        blurRadius: 20,
                        color: const Color(0xff014DAD).withOpacity(0.3),
                      )
                    ]),
                height: size.getHyt(56),
                width: size.getWyd(312),
                child: Center(
                  child: Text(
                    'Place Order',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,
                      fontSize: size.getHyt(14),
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.getHyt(30),
            ),
          ],
        ),
      ),
    );
  }
}
