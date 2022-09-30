import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../const/colors.dart';
import '../../../const/responsivenes.dart';
import 'package:dotted_border/dotted_border.dart';

import 'sell_conrto.dart';

class Sell extends StatelessWidget {
  Sell({Key? key}) : super(key: key);
  final _contro = Get.put(SellControl());

  @override
  Widget build(BuildContext context) {
    Responsive size = Responsive(context);
    TextStyle textStyle = GoogleFonts.poppins(
      color: textColor,
      fontWeight: FontWeight.w400,
      fontSize: size.getHyt(10),
    );
    // bool off = false;
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: size.getWyd(10)),
            height: size.getHyt(42),
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xffE2E2E2),
              ),
              borderRadius: BorderRadius.circular(3),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Item name',
                hintStyle: textStyle,
              ),
            ),
          ),
          SizedBox(
            height: size.getHyt(20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: size.getWyd(10),
                ),
                height: size.getHyt(42),
                width: size.getWyd(70),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xffE2E2E2),
                  ),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Quantity (stock) ',
                    hintStyle: textStyle,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: size.getWyd(10),
                ),
                height: size.getHyt(42),
                width: size.getWyd(70),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xffE2E2E2),
                  ),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Unit',
                    hintStyle: textStyle,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: size.getHyt(20),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: size.getWyd(10)),
            height: size.getHyt(42),
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xffE2E2E2),
              ),
              borderRadius: BorderRadius.circular(3),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Original Price eg 50000',
                hintStyle: textStyle,
              ),
            ),
          ),
          SizedBox(
            height: size.getHyt(10),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Product discount',
                style: GoogleFonts.poppins(
                  // color: textColor,
                  fontWeight: FontWeight.w400,
                  fontSize: size.getHyt(16),
                ),
              ),
              Obx(
                () => Switch.adaptive(
                  activeColor: dumb_green,
                  value: _contro.off.value,
                  onChanged: (val) {
                    _contro.off.value = val;
                  },
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: size.getWyd(10),
                ),
                height: size.getHyt(42),
                width: size.getWyd(70),
                decoration: BoxDecoration(
                  color: _contro.off.value == false
                      ? const Color(0xffF1F1F1)
                      : Colors.transparent,
                  border: Border.all(
                    color: const Color(0xffE2E2E2),
                  ),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Obx(
                  () => TextFormField(
                    enabled: _contro.off.value,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Discounted Amount',
                      hintStyle: textStyle,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: size.getWyd(10),
                ),
                height: size.getHyt(42),
                width: size.getWyd(70),
                decoration: BoxDecoration(
                  color: _contro.off.value == false
                      ? const Color(0xffF1F1F1)
                      : Colors.transparent,
                  border: Border.all(
                    color: const Color(0xffE2E2E2),
                  ),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Obx(
                  () => TextFormField(
                    enabled: _contro.off.value,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Discount (%)',
                      hintStyle: textStyle,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: size.getHyt(20),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: size.getWyd(10)),
            height: size.getHyt(42),
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xffE2E2E2),
              ),
              borderRadius: BorderRadius.circular(3),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Product Category',
                hintStyle: textStyle,
              ),
            ),
          ),
          SizedBox(
            height: size.getHyt(20),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: size.getWyd(10)),
            height: size.getHyt(100),
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xffE2E2E2),
              ),
              borderRadius: BorderRadius.circular(3),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Product Description',
                hintStyle: textStyle,
              ),
            ),
          ),
          SizedBox(
            height: size.getHyt(20),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: size.getWyd(10)),
            height: size.getHyt(42),
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xffE2E2E2),
              ),
              borderRadius: BorderRadius.circular(3),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Product Category',
                hintStyle: textStyle,
              ),
            ),
          ),
          SizedBox(
            height: size.getHyt(20),
          ),
          DottedBorder(
            strokeWidth: 2,
            strokeCap: StrokeCap.butt,
            dashPattern: const [5, 5],
            color: dumb_green,
            borderType: BorderType.RRect,
            radius: const Radius.circular(12),
            child: SizedBox(
              height: size.getHyt(117),
              width: double.infinity,
              child: Column(
                children: [
                  Icon(
                    Icons.cloud_upload_outlined,
                    color: dumb_green,
                    size: size.getHyt(60),
                  ),
                  Text(
                    'Click here to upload images',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: size.getHyt(14),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: size.getHyt(40),
          )
        ],
      ),
    );
  }
}
