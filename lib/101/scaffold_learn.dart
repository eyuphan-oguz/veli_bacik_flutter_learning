import 'package:flutter/material.dart';


class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Scaffold samples"),),
      body: Text("merhaba"),
      backgroundColor: Colors.red,
      floatingActionButton: FloatingActionButton(onPressed: (){}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: Drawer(),
      bottomSheet: BottomSheet(
        builder: (context){
          return Text("data");
        },
        onClosing: (){},
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.abc_outlined),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.abc_outlined),label: "")
        ],
      ),
    );
  }
}
