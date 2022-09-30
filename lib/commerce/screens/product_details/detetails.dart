
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../network_models/products.dart';
import '../const/responsivenes.dart';

import '../widgets.dart/cust_widget.dart';
import 'details_contro.dart';

class ProductDetails extends StatelessWidget {
  final Product product;
  List<Product> products;
  ProductDetails({
    Key? key,
    required this.product,
    required this.products,
  }) : super(key: key);
  final _contro = Get.put(ProductsDetilsControl());

  @override
  Widget build(BuildContext context) {
    Responsive size = Responsive(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: size.getWyd(5),
        ).copyWith(top: 60),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustAppbar(
                size: size,
                title: 'Product Details',
              ),
              SizedBox(
                height: size.getHyt(40),
              ),
              Image.network(
                product.image,
                height: size.getHyt(200),
              ),
              SizedBox(
                height: size.getHyt(20),
              ),
              Container(
                // padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      color: Colors.black.withOpacity(0.25),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20).copyWith(bottom: 10),
                      child: TopCard(
                          product: product, size: size, contro: _contro),
                    ),
                    const Divider(
                      color: Color(0xffE2E2E2),
                      thickness: 1,
                    ),
                    Description(size: size, product: product),
                  ],
                ),
              ),
              SizedBox(
                height: size.getHyt(20),
              ),
              InkWell(
                onTap: (() async {
                  // await _contro.addTocart(
                  //   ProductHive(
                  //     ammount: product.ammount,
                  //     des: product.des,
                  //     disc: product.disc,
                  //     img: product.img,
                  //     name: product.name,
                  //     qty: 2,
                  //     ratng: product.ratng,
                  //     sec: product.sec,
                  //   ),
                  // );
                  // Get.to(
                  //   // Cart(),
                  // );
                }),
                child: WideBtn(
                  size: size,
                  label: 'Add to Cart',
                ),
              ),
              SizedBox(
                height: size.getHyt(10),
              ),
              Row(
                children: [
                  Text(
                    'Similar Products',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: size.getHyt(12),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.getHyt(10),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.getWyd(2)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: products
                        .map(
                          (e) => ItemCard(
                            size: size,
                            product: e,
                            products: [],
                          ),
                        )
                        .toList()
                    // List.generate(
                    //   2,
                    // (index) =>
                    // ),
                    ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TopCard extends StatelessWidget {
  const TopCard({
    Key? key,
    required this.product,
    required Responsive size,
    required ProductsDetilsControl contro,
  })  : size = size,
        _contro = contro,
        super(key: key);

  final Product product;
  final Responsive size;
  final ProductsDetilsControl _contro;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: [
        //     const Rating(
        //       rate: 3,
        //     ),
        //     Text(
        //       product.disc != 0 ? '-${product.disc}% off' : '',
        //       style: GoogleFonts.poppins(
        //         fontWeight: FontWeight.w600,
        //         color: const Color(
        //           0xff76B51F,
        //         ),
        //       ),
        //     )
        //   ],
        // ),
        Text(
          product.name,
          // product.name.split(' ')[0],
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            fontSize: size.getHyt(12),
            color: const Color(0xff747474),
          ),
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(
          height: size.getHyt(10),
        ),
        // Row(
        //   children: [
        //     Text(
        //       'Ugx ${product.ammount - product.disc / 100 * product.ammount}',
        //       style: GoogleFonts.poppins(
        //           fontWeight: FontWeight.w600,
        //           fontSize: size.getHyt(12),
        //           color: const Color(0xff747474)),
        //     ),
        //   ],
        // ),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: [
        //     Text(
        //       product.disc != 0 ? 'Ugx ${product.ammount}' : '',
        //       style: GoogleFonts.poppins(
        //         fontWeight: FontWeight.w600,
        //         fontSize: size.getHyt(10),
        //         color: const Color(0xffEE1111),
        //         decoration: TextDecoration.lineThrough,
        //       ),
        //     ),
        Row(
          children: [
            GestureDetector(
              onTap: (() => _contro.qty.value != 0
                  ? _contro.qty.value -= 1
                  : _contro.qty.value = 0),
              child: Container(
                decoration: BoxDecoration(
                    color: const Color(0xff76B51F),
                    borderRadius: BorderRadius.circular(3)),
                child: const Center(
                  child: Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Obx(
                () => Text(
                  '${_contro.qty.value}',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: size.getHyt(12),
                      color: const Color(0xff747474)),
                ),
              ),
            ),
            GestureDetector(
              onTap: (() => _contro.qty.value += 1),
              child: Container(
                decoration: BoxDecoration(
                    color: const Color(0xff76B51F),
                    borderRadius: BorderRadius.circular(3)),
                child: const Center(
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    ));
  }
}

class Description extends StatelessWidget {
  const Description({
    Key? key,
    required Responsive size,
    required this.product,
  })  : size = size,
        super(key: key);

  final Responsive size;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.all(20).copyWith(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Description',
              style: GoogleFonts.poppins(
                fontSize: size.getHyt(12),
                fontWeight: FontWeight.w600,
                color: const Color(0xff747474),
              ),
            ),
            SizedBox(
              height: size.getHyt(10),
            ),
            Text(
              product.description,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                fontSize: size.getHyt(11),
                color: const Color(0xff747474),
              ),
            ),
            SizedBox(
              height: size.getHyt(10),
            ),
            Row(
              children: [
                const Icon(
                  Icons.location_on,
                  color: Color(0xff76B51F),
                ),
                Text(
                  'Sellers Location: ',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: size.getHyt(11),
                  ),
                ),
                Text(
                  'Mbarara',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: size.getHyt(11),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
