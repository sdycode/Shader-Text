
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:shader_texts/src/googlefontsmap.dart';

class Style7 extends StatelessWidget {
  String yourText;

  double fontsize;
  TextAlign textAlign;
  String? fontFamily;

  Style7(

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
            Container(
              padding: EdgeInsets.all(15),
              child: Text(
                yourText,
                textAlign: textAlign,
                  style: GoogleFonts.getFont(
      
                  fontsByName[font] as String,
                  textStyle: TextStyle(
                  fontSize: fontsize,
                  shadows: const [
                    BoxShadow(
                        color: Colors.black,
                        offset: Offset(3, 3),
                        spreadRadius: 4,
                        blurRadius: 4)
                  ],
                ),
              ),
            ),
            ),
            ShaderMask(
              blendMode: BlendMode.srcIn,
              shaderCallback: (Rect bounds) {
                print("bounds ${bounds.size.width}  & ${bounds.size.height} ");
                return const LinearGradient(
                  stops: [0, 0.8, 0.95],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.red, Colors.amber, Colors.yellow],
                  tileMode: TileMode.mirror,
                ).createShader(bounds);
              },
              child: Container(
                // padding: EdgeInsets.all(15),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
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
              ),),
            Container(
              padding: EdgeInsets.all(15),
              child: Text(yourText,
                  textAlign: textAlign,
                  overflow: TextOverflow.clip,
                    style: GoogleFonts.getFont(
      
                  fontsByName[font] as String,
                  textStyle: TextStyle(
                    fontSize: fontsize,
                    foreground: Paint()
                      ..strokeWidth = 3
                      ..color = Colors.black
                      ..style = PaintingStyle.stroke,
                  ),),),
            )
          ],
        );
}
}