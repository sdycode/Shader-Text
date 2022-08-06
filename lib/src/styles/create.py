
import os
from tkinter.ttk import Style

data = '''
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:shader_texts/src/googlefontsmap.dart';

class Style3 extends StatelessWidget {
  String yourText;

  double fontsize;
  TextAlign textAlign;
  String? fontFamily;

  Style3(

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
    return Container();}
}'''
# for i in range(2):
#     filename = 'style'+str(i)+'.dart'
    
#     with open(filename,'w+') as f:
#         f.write(data.replace('Style3', 'Style'+str(i)))