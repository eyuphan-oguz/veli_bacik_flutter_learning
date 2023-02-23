import 'package:flutter/material.dart';


class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 200,
            height: 200,
            child: Text("a"*500),
          ),
          SizedBox.shrink(),
          SizedBox(height: 100,),
          SizedBox.square(child: Text("c"*500),)
        ],
      ),
    );
  }
}
