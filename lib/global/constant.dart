import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class constants {
  static Container size({width, height}) {
    return Container(
      width: width,
      height: height,
    );
  }

  static TextStyle style({required fontsize}) {
    return GoogleFonts.rubik(
      fontSize: fontsize,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle style1({required fontsize}) {
    return GoogleFonts.roboto(
      fontSize: fontsize,
      fontWeight: FontWeight.bold,
      color: Color(0xffFFA300),
    );
  }
}
