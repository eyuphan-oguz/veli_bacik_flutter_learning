import 'package:flutter/material.dart';

class ColorLearn extends StatelessWidget {
  const ColorLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorsItems.porchase,
        child: Text("data"),
      ),
    );
  }
}


class ColorsItems{
  static final Color porchase=Color(0xFFED8F61);
}