

for i in range(1,12):
    # s = '''case Style.style2:
    #     return Style2(yourText: widget.yourText, fontsize: widget.fontsize, textAlign: widget.textAlign, fontFamily: widget.myFont.toString(),);'''
    # s = s.replace('le2','le'+str(i))
    s= '''import 'package:shader_texts/src/styles/style2.dart';'''
    s = s.replace('le2','le'+str(i))
    print(s)