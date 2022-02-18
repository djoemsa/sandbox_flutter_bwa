import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UpperNavi extends StatelessWidget {
  final String buttonName;
  final bool selected;

  UpperNavi({
    this.buttonName = "Unnamed",
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          buttonName,
          style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: selected ? FontWeight.w500 : FontWeight.w300,
              color: Color(0xff1D1E3C)),
        ),
        Container(
          width: 66,
          height: 2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: selected ? Color(0xffFE998D) : Colors.transparent,
          ),
        ),
      ],
    );
  }
}
