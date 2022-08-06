
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:shader_texts/src/googlefontsmap.dart';

class Style1 extends StatelessWidget {
  String yourText;

  double fontsize;
  TextAlign textAlign;
  String? fontFamily;

  Style1(

      {
    this.yourText = "Your Text",
    this.fontsize = 45,
    this.textAlign = TextAlign.center,
    this.fontFamily,
    // required this.fontFamily,
  });

  @override
  build(BuildContext context) {
    String font = fontFamily.toString().replaceAll('MyFont.', '');
    return Stack(
          children: [
            Text(
              yourText,
textAlign : textAlign,
              style:GoogleFonts.getFont(
      
                  fontsByName[font] as String,
                  textStyle: TextStyle(
                  color: Colors.amber.shade300,
                  fontSize: fontsize,
                  shadows: const [
                    BoxShadow(
                        color: Colors.black,
                        offset: Offset(3, 3),
                        spreadRadius: 2,
                        blurRadius: 5)
                  ]),)
            ),
            Text(
              yourText,
textAlign : textAlign,
              style: GoogleFonts.getFont(
      
                  fontsByName[font] as String,
                  textStyle:TextStyle(
                fontSize: fontsize,

                foreground: Paint()
                  ..color = Colors.orange
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 3.0,

                // ..blendMode= BlendMode.colorBurn
              ),)
            )
          ],
        );}
}