import 'package:flutter/material.dart';
import 'package:veli_bacik_flutter_learning/core/random_image.dart';


class ListViewBuilderLearn extends StatefulWidget {
  const ListViewBuilderLearn({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderLearn> createState() => _ListViewBuilderLearnState();
}

class _ListViewBuilderLearnState extends State<ListViewBuilderLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
        itemCount: 20,
          separatorBuilder: (context,index){
            return Divider(
              color: Colors.white,
            );
          },
          itemBuilder: (context,index){
        return SizedBox(
          height: 200,
          child: Column(
            children: [
              Expanded(child: RandomImage()),
            ],
          ),
        );
      }),
    );
  }
}
