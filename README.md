TODO: This package is to make simple text to colorful texts using gradients, shader mask, fonts
## Features

TODO: It has features of various fonts with text shading styles

## Getting started
<h1>Shader Text</h1>

TODO: Just import package and show ArtText widget

## Usage

TODO: it contains sample example whose image is given below.

```dart
import 'package:flutter/material.dart';
import 'package:shader_texts/shader_texts.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Demo(),
    );
  }
}

class Demo extends StatefulWidget {
  Demo({Key? key}) : super(key: key);

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ArtText(
                myFont: MyFont.podkova,
                yourText: 'Style 1',
                fontsize: 60,
                style: Style.style1),
            ArtText(
                myFont: MyFont.podkova,
                yourText: 'Style 2',
                fontsize: 60,
                style: Style.style2),
            ArtText(
                myFont: MyFont.kadwa,
                yourText: 'Style 3',
                fontsize: 60,
                style: Style.style3),
            ArtText(
                myFont: MyFont.tajawal,
                yourText: 'Style 11',
                fontsize: 60,
                style: Style.style11),
            ArtText(
                myFont: MyFont.damion,
                yourText: 'Style 9',
                fontsize: 60,
                style: Style.style9),
            ArtText(
                myFont: MyFont.abhayaLibre,
                yourText: 'Style 10',
                fontsize: 60,
                style: Style.style10)
          ],
        ),
      )),
    );
  }
}


```

<table>
<td><img src="https://raw.githubusercontent.com/sdycode/shader_text_demo_app/main/assets/ss1.jpg?token=GHSAT0AAAAAABTYHDGUISW5PRZNIPBOUELYYYCNTTA" alt = "" width="200"></td>
</table>


## Additional information

TODO: In future more styles are to be added time to time along with custom style option would be given for shading, shading styles and colors


