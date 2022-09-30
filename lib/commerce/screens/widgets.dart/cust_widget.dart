import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../network_models/products.dart';
import '../const/responsivenes.dart';
import '../product_details/detetails.dart';

class CustAppbar extends StatelessWidget {
  const CustAppbar({
    Key? key,
    required Responsive size,
    required String title,
  })  : _size = size,
        _title = title,
        super(key: key);

  final Responsive _size;
  final String _title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: (() => Get.back()),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color(0xff73B41A),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.arrow_back_ios_new,
                color: const Color(0xff73B41A),
                size: _size.getHyt(20),
              ),
            ),
          ),
        ),
        SizedBox(
          width: _size.getWyd(20),
        ),
        Text(
          _title,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            fontSize: _size.getHyt(18),
          ),
        )
      ],
    );
  }
}

//Wide button
class WideBtn extends StatelessWidget {
  const WideBtn({Key? key, required Responsive size, required String label})
      : _size = size,
        _label = label,
        super(key: key);

  final Responsive _size;
  final String _label;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _size.getHyt(56),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: const Color(0xff73B41A),
        boxShadow: [
          BoxShadow(
            offset: const Offset(10, 8),
            color: const Color(0xff014DAD).withOpacity(0.29),
            blurRadius: 20,
          )
        ],
      ),
      child: Center(
        child: Text(
          _label,
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: _size.getHyt(14),
          ),
        ),
      ),
    );
  }
}

//rating
class Rating extends StatelessWidget {
  const Rating({
    Key? key,
    required int rate,
  })  : _rate = rate,
        super(key: key);
  final int _rate;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: List.generate(
        _rate,
        (index) => const Icon(
          Icons.star,
          color: Color(0xffF9C404),
          size: 15,
        ),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  //  products;
  const ItemCard(
      {Key? key,
      required Responsive size,
      required Product product,
      required List<Product> products

      // required Section section,
      })
      : _size = size,
        _product = product,
        _products = products,
        // _section = section,
        super(key: key);

  final Responsive _size;
  final Product _product;
  final List<Product> _products;
  // final Section _section;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        print('test');
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: ((context) => ProductDetails(
                      product: _product,
                      products: [],
                    ))));
        // Get.to(

        // );
      }),
      child: Stack(
        children: [
          Container(
            width: _size.getWyd(60),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                      // offset: Offset(4, 2),
                      color: Colors.black.withOpacity(0.01),
                      blurRadius: 4)
                ]),
            child: Column(
              children: [
                Image.network(
                  _product.image,
                  // loadingBuilder: (context, child, loadingProgress) => Text(),
                  height: _size.getHyt(80),
                ),
                SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 80,
                        child: Text(
                          _product.name.split(' ')[0],
                          style: GoogleFonts.poppins(
                            color: const Color(0xff747474),
                            fontSize: _size.getHyt(11),
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Rating(
                        rate: int.tryParse(_product.rating.ratingValue) ?? 0,
                      ),
                      Text(
                        'Ugx ${_product.price}',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff747474),
                          fontSize: _size.getHyt(12),
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.only(
          //     top: 10,
          //     left: 10,
          //   ),
          //   child: prods[_index].disc != 0.0
          //       ? Container(
          //           padding: EdgeInsets.symmetric(
          //             horizontal: _size.getWyd(2.5),
          //             vertical: _size.getHyt(5),
          //           ),
          //           decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(3),
          //             color: const Color(0xff73B41A),
          //           ),
          //           child: Text(
          //             '-${prods[_index].disc}%',
          //             style: GoogleFonts.poppins(
          //               fontWeight: FontWeight.w600,
          //               color: Colors.white,
          //               fontSize: _size.getHyt(11),
          //             ),
          //             overflow: TextOverflow.ellipsis,
          //           ),
          //         )
          //       : const SizedBox(),
          // ),
        ],
      ),
    );
  }
}
