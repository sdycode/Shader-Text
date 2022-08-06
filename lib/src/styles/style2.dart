
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:shader_texts/src/googlefontsmap.dart';

class Style2 extends StatelessWidget {
  String yourText;

  double fontsize;
  TextAlign textAlign;
  String? fontFamily;

  Style2(

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
    return ShaderMask(
          blendMode: BlendMode.srcIn,
          shaderCallback: (Rect bounds) {
            print("bounds ${bounds.size.width}  & ${bounds.size.height} ");
            return LinearGradient(
              colors: [Colors.red, Colors.blue],
              tileMode: TileMode.mirror,
            ).createShader(bounds);
          },
          child: Container(
            margin: EdgeInsets.all(10),
            child: Text(yourText,
                textAlign: textAlign,
                overflow: TextOverflow.clip,
                  style: GoogleFonts.getFont(
      
                  fontsByName[font] as String,
                  textStyle: TextStyle(
                  fontSize: fontsize,
                ),),),
          ),
        );}
}