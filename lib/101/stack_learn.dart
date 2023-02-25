import 'package:flutter/material.dart';

class StackLearn extends StatelessWidget {
  const StackLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Container(color: Colors.red,height: 100,),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Container(color: Colors.blue,height: 100,),
          ),
          Positioned(
              right: 0,
              left: 0,
              height: 50,
              top: 100,
              child: Container(color: Colors.green,))
        ],
      ),
    );
  }
}
