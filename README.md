<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

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
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
              child: ArtText(
                  myFont: MyFont.podkova,
                  yourText: 'Your Text',
                  fontsize: 60,
                  style: Style.style1))),
    );
  }
}

```
<td>
<img src="https://github.com/sdycode/Shader-Text/blob/main/ss1.jpg" alt="">
</td>

## Additional information

TODO: In future more styles are to be added time to time along with custom style option would be given for shading, shading styles and colors
