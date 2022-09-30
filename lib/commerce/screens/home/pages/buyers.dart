import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../const/colors.dart';
import '../../const/responsivenes.dart';

class Buyers extends StatelessWidget {
  const Buyers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Responsive size = Responsive(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Recommended',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            fontSize: size.getHyt(14),
          ),
        ),
        SizedBox(
          height: size.getHyt(10),
        ),
        Container(
          padding: EdgeInsets.symmetric(
            vertical: size.getHyt(10),
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 4,
              )
            ],
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.getWyd(10)),
                child: Row(
                  children: [
                    Image.asset('asset/pngs/human_face.png'),
                    SizedBox(
                      width: size.getWyd(23),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'David Bwambale',
                          style: GoogleFonts.poppins(
                            color: textColor,
                            fontWeight: FontWeight.w600,
                            fontSize: size.getHyt(12),
                          ),
                        ),
                        Text(
                          'Nyamitanga, Mbarara',
                          style: GoogleFonts.poppins(
                            color: textColor,
                            fontWeight: FontWeight.w400,
                            fontSize: size.getHyt(12),
                          ),
                        )
                      ],
                    ),
                    const Expanded(
                      child: SizedBox(),
                    ),
                    Icon(
                      Icons.call,
                      color: dumb_green,
                      size: size.getHyt(30),
                    )
                  ],
                ),
              ),
              const Divider(
                thickness: 1,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.getWyd(10)),
                child: Row(
                  children: [
                    Image.asset('asset/pngs/maize.png'),
                    SizedBox(
                      width: size.getWyd(10),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Maize',
                          style: GoogleFonts.poppins(
                            color: textColor,
                            fontWeight: FontWeight.w600,
                            fontSize: size.getHyt(12),
                          ),
                        ),
                        SizedBox(
                          height: size.getHyt(10),
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Quantity',
                                  style: GoogleFonts.poppins(
                                    color: textColor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: size.getHyt(12),
                                  ),
                                ),
                                Text(
                                  '150 kgs',
                                  style: GoogleFonts.poppins(
                                    color: textColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: size.getHyt(12),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: size.getWyd(20),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Price',
                                  style: GoogleFonts.poppins(
                                    color: textColor,
                                    fontWeight: FontWeight.w400,
                                    fontSize: size.getHyt(12),
                                  ),
                                ),
                                Text(
                                  'UGX. 4,500 /kg',
                                  style: GoogleFonts.poppins(
                                    color: textColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: size.getHyt(12),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: size.getHyt(10),
                        ),
                        Text(
                          'Offer Validity',
                          style: GoogleFonts.poppins(
                            color: textColor,
                            fontWeight: FontWeight.w400,
                            fontSize: size.getHyt(12),
                          ),
                        ),
                        Text(
                          '21 Feb 2022 - 28 Feb 2022',
                          style: GoogleFonts.poppins(
                            color: textColor,
                            fontWeight: FontWeight.w600,
                            fontSize: size.getHyt(12),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
