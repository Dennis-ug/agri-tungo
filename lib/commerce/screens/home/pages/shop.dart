import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../network_models/products.dart';
// import '../../../network_models/products.dart'; as Product;
import '../../const/responsivenes.dart';
import '../../widgets.dart/cust_widget.dart';
import '../home_contro.dart';
import '../sample_data.dart';

class Shop extends StatelessWidget {
  Shop({Key? key}) : super(key: key);
  final _contro = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    Responsive size = Responsive(context);
    return FutureBuilder<Products>(
        // initialData: const [],
        future: _contro.getProducts(),
        builder: (context, AsyncSnapshot<Products> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator.adaptive());
          } else if (snapshot.hasData) {
            // ignore: unused_local_variable
            // List<Product> pro = snapshot.data!.data.products;
            return SizedBox(
              height: size.getHyt(500),
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Recommended',
                          style: GoogleFonts.poppins(
                            fontSize: size.getHyt(14),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                        )
                      ],
                    ),
                    SizedBox(
                      height: size.getHyt(10),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: snapshot.data!.data.products
                              .getRange(0, 2)
                              .map(
                                (product) => ItemCard(
                                  products: snapshot.data!.data.products
                                      .where(
                                        (element) =>
                                            element.category.name ==
                                            product.category.name,
                                      )
                                      .toList(),
                                  // section: Section.recomended,
                                  size: size,
                                  product: product,
                                ),
                              )
                              .toList()
                          //  List.generate(
                          //   2,
                          // (index) => ItemCard(
                          //   section: Section.recomended,
                          //   size: size,
                          //   index: index,
                          // ),
                          // ),
                          ),
                    ),
                    SizedBox(
                      height: size.getHyt(10),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Fertilizers',
                          style: GoogleFonts.poppins(
                            fontSize: size.getHyt(14),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                        )
                      ],
                    ),
                    SizedBox(
                      height: size.getHyt(10),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: snapshot.data!.data.products
                              .getRange(2, 4)
                              .map(
                                (product) => ItemCard(
                                  // section: Section.recomended,
                                  size: size,
                                  product: product,
                                  products: snapshot.data!.data.products
                                      .where((element) =>
                                          element.category.name ==
                                          product.category.name)
                                      .toList(),
                                ),
                              )
                              .toList()),
                    ),
                  ],
                ),
              ),
            );
          } else {
            return const Text("Erro occuried");
          }
        });
  }
}
