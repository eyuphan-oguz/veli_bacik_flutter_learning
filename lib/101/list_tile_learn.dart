import 'package:flutter/material.dart';

import '../core/random_image.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({Key? key}) : super(key: key);
  final String randomImage="https://picsum.photos/200/300";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              child: ListTile(
                onTap: (){},
                title: RandomImage(),
                subtitle: Text("How do you use your card"),
                leading: Icon(Icons.money),
                trailing: SizedBox(width:20,child: Icon(Icons.chevron_right)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
