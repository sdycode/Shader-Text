import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shader_texts/src/googlefontsmap.dart';
import 'package:shader_texts/src/styles/style1.dart';
import 'package:shader_texts/src/styles/style1.dart';
import 'package:shader_texts/src/styles/style2.dart';
import 'package:shader_texts/src/styles/style3.dart';
import 'package:shader_texts/src/styles/style4.dart';
import 'package:shader_texts/src/styles/style5.dart';
import 'package:shader_texts/src/styles/style6.dart';
import 'package:shader_texts/src/styles/style7.dart';
import 'package:shader_texts/src/styles/style8.dart';
import 'package:shader_texts/src/styles/style9.dart';
import 'package:shader_texts/src/styles/style10.dart';
import 'package:shader_texts/src/styles/style11.dart';

enum Style {
style1,
  style2,
  style3,
  style4,
  style5,
  style6,
  style7,
  style8,
  style9,
  style10,
  style11
}

class ArtText extends StatefulWidget {
  String yourText;
  Style style;
  double fontsize;
  TextAlign textAlign;
MyFont myFont;
  ArtText(
      {this.yourText = "Your\nText",
      this.style = Style.style2,
      this.fontsize = 45,
      this.textAlign = TextAlign.center, this.myFont = MyFont.abel});

  @override
  State<ArtText> createState() => _ArtTextState();
}

class _ArtTextState extends State<ArtText> {
  @override
  Widget build(BuildContext context) {
        String font = widget.myFont.toString().replaceAll('MyFont.', '');
        
        // fontFamily.toString().replaceAll('MyFont.', '');

    switch (widget.style) {
   case Style.style1:
        return Style1(yourText: widget.yourText, fontsize: widget.fontsize, textAlign: widget.textAlign, fontFamily: widget.myFont.toString(),);
case Style.style2:
        return Style2(yourText: widget.yourText, fontsize: widget.fontsize, textAlign: widget.textAlign, fontFamily: widget.myFont.toString(),);
case Style.style3:
        return Style3(yourText: widget.yourText, fontsize: widget.fontsize, textAlign: widget.textAlign, fontFamily: widget.myFont.toString(),);
case Style.style4:
        return Style4(yourText: widget.yourText, fontsize: widget.fontsize, textAlign: widget.textAlign, fontFamily: widget.myFont.toString(),);
case Style.style5:
        return Style5(yourText: widget.yourText, fontsize: widget.fontsize, textAlign: widget.textAlign, fontFamily: widget.myFont.toString(),);
case Style.style6:
        return Style6(yourText: widget.yourText, fontsize: widget.fontsize, textAlign: widget.textAlign, fontFamily: widget.myFont.toString(),);
case Style.style7:
        return Style7(yourText: widget.yourText, fontsize: widget.fontsize, textAlign: widget.textAlign, fontFamily: widget.myFont.toString(),);
case Style.style8:
        return Style8(yourText: widget.yourText, fontsize: widget.fontsize, textAlign: widget.textAlign, fontFamily: widget.myFont.toString(),);
case Style.style9:
        return Style9(yourText: widget.yourText, fontsize: widget.fontsize, textAlign: widget.textAlign, fontFamily: widget.myFont.toString(),);
case Style.style10:
        return Style10(yourText: widget.yourText, fontsize: widget.fontsize, textAlign: widget.textAlign, fontFamily: widget.myFont.toString(),);
case Style.style11:
        return Style11(yourText: widget.yourText, fontsize: widget.fontsize, textAlign: widget.textAlign, fontFamily: widget.myFont.toString(),);

      default:
        
     return Style11(yourText: widget.yourText, fontsize: widget.fontsize, textAlign: widget.textAlign, fontFamily: widget.myFont.toString(),);

    }
  }
}
