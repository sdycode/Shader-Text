
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:shader_texts/src/googlefontsmap.dart';

class Style11 extends StatelessWidget {
  String yourText;

  double fontsize;
  TextAlign textAlign;
  String? fontFamily;

  Style11(

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
            ShaderMask(
              blendMode: BlendMode.srcIn,
              shaderCallback: (Rect bounds) {
                print("bounds ${bounds.size.width}  & ${bounds.size.height} ");
                return LinearGradient(
                  stops: [0.4, 0.97],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.purple.shade100,
                    Colors.deepPurple.shade200,
                  ],
                  tileMode: TileMode.mirror,
                ).createShader(bounds);
              },
              child: Container(
                margin: EdgeInsets.all(15),
                child: Text(yourText,
                    textAlign: textAlign,
                    overflow: TextOverflow.clip,
                      style: GoogleFonts.getFont(
      
                  fontsByName[font] as String,
                  textStyle: TextStyle(
                      fontSize: fontsize,
                      foreground: Paint(),
                    ),),),
              ),
            ),
            ShaderMask(
              blendMode: BlendMode.srcIn,
              shaderCallback: (Rect bounds) {
                print("bounds ${bounds.size.width}  & ${bounds.size.height} ");
                return const LinearGradient(
                  stops: [0.4, 0.97],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.purple,
                    Colors.deepPurple,
                  ],
                  tileMode: TileMode.mirror,
                ).createShader(bounds);
              },
              child: Container(
                margin: EdgeInsets.all(15),
                child: Text(yourText,
                    textAlign: textAlign,
                    overflow: TextOverflow.clip,
                      style: GoogleFonts.getFont(
      
                  fontsByName[font] as String,
                  textStyle: TextStyle(
                      fontSize: fontsize,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 3.0,
                    ),),),
              ),
            ),
          ],
        );}
}