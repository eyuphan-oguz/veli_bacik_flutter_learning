import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextWidget(title: "Data",),
          buildSizedBox(height: 20),
          TextWidget(title: "Data",),

        ],
      ),
    );
  }

  SizedBox buildSizedBox({required double height}) => SizedBox(height: height,);
  
}



class TextWidget extends StatelessWidget {
  const TextWidget({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title,style:Theme.of(context).textTheme.headline3,);
  }
}
