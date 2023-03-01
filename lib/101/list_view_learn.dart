import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({Key? key}) : super(key: key);

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          FittedBox(child: Text("Merhaba",style: Theme.of(context).textTheme.headline1,)),

          Container(color: Colors.red,height: 300,),
          Divider(),
          Container(color: Colors.green,height: 300,),
          Divider(),
          SizedBox(
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(color: Colors.blue,width: 100,),
                Container(color: Colors.white,width: 100,),
                Container(color: Colors.blue,width: 100,),
                Container(color: Colors.white,width: 100,),
                Container(color: Colors.blue,width: 100,),
              ],
            ),
          ),
          IconButton(onPressed: (){}, icon: Icon(Icons.close)),
          _ListDemo()

        ],
      ),
    );
  }
}



class _ListDemo extends StatefulWidget {
  const _ListDemo({Key? key}) : super(key: key);

  @override
  State<_ListDemo> createState() => _ListDemoState();
}

class _ListDemoState extends State<_ListDemo> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("initState");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("dispose");
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
