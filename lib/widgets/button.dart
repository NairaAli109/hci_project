import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hci_project/const/colors.dart';
import 'package:hci_project/const/size.dart';

class Button extends StatelessWidget {

  final String text;
  final Function onTap;
  const Button({ required this.text, required this.onTap, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        width: width(context, 2),
        height: height(context, 13.0),
        margin: const EdgeInsets.symmetric(vertical: 20),
        decoration:  const BoxDecoration(
          color: blue,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Center(
          child: Text(
            text,
            style:  GoogleFonts.tajawal(
                fontSize: 25,
                color: white2,
                fontWeight: FontWeight.w600
            )
          ),
        ),
      ),
    );
  }
}
