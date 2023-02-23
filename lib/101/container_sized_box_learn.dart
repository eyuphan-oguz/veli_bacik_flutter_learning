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
          SizedBox.square(child: Text("c"*500),dimension: 500,),
          Container(
            constraints: const BoxConstraints(maxWidth: 200),
            child: Text("a"*200),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(50),
            decoration: ProjectContainerDecoration()
          )
        ],
      ),
    );
  }
}


class ProjectUtility{

  static BoxDecoration boxDecoration=BoxDecoration(
      gradient: LinearGradient(colors: [Colors.white,Colors.blueAccent]),
      color: Colors.green,
      boxShadow: [BoxShadow(color: Colors.amber,offset: Offset(0.1,1))],
      shape: BoxShape.circle,
      border: Border.all(color: Colors.red,width: 2)
  );

}


class ProjectContainerDecoration extends BoxDecoration{

    ProjectContainerDecoration():super(
        gradient: LinearGradient(colors: [Colors.white,Colors.blueAccent]),
        color: Colors.green,
        boxShadow: [BoxShadow(color: Colors.amber,offset: Offset(0.1,1))],
        shape: BoxShape.circle,
        border: Border.all(color: Colors.red,width: 2)
    );

}
