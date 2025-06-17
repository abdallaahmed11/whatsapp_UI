import 'package:flutter/material.dart';
import 'package:whatsapp/colors.dart';
import 'package:whatsapp/images.dart';
import 'package:whatsapp/screen.dart';
void main() {
  return runApp(whatsapp());
}

class whatsapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: BoxDecoration(
            color: colors.black,
            image: DecorationImage(
                image: AssetImage(images.background), fit: BoxFit.cover)),
        child:appbar(),
      ),
    );
  }
}
