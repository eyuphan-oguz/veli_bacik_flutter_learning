import 'package:flutter/material.dart';

class IconLearn extends StatelessWidget {
  const IconLearn({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hello"),),
      body: Column(
        children: [
          IconButton(onPressed: (){}, icon: Icon(Icons.message_outlined,color: IconColors().froly,size: IconSizes().iconSmall,))
        ],
      ),
    );
  }
}


class IconSizes{
  final double iconSmall=40;
}

class IconColors{
  final Color froly=Color(0xFFED617A);
}
