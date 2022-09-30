import 'package:flutter/material.dart';

class Responsive {
  BuildContext context;
  Responsive(this.context);

  double getHyt(double px) {
    double phyt = 812;
    return (px / phyt * MediaQuery.of(context).size.height);
  }

  double getWyd(double px) {
    double pWyd = 375;
    return (px / pWyd * MediaQuery.of(context).size.height);
  }
}
