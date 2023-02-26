import 'package:flutter/material.dart';

import '../product/counter_hello_button.dart';

class StatefullLearn extends StatefulWidget {
  const StatefullLearn({Key? key}) : super(key: key);

  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

class _StatefullLearnState extends State<StatefullLearn> {
  int _countValue=0;


  void updateCounter(bool isIncrement){
    if(isIncrement==true){
      _countValue+=1;
    }else{
      _countValue-=1;
    }
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Row(
        mainAxisSize:MainAxisSize.min,
        children: [
          _incrementButton(),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: _deincrementButton(),
          ),

        ],      ),
      body: Column(
        children: [
          Center(child: Text(_countValue.toString(),style: Theme.of(context).textTheme.headline3,),),
          Placeholder(),
          CounterHelloButton()
        ],
      ),
    );
  }

  _incrementButton() => FloatingActionButton(onPressed: (){updateCounter(true);
      print("hello");
  },child: Icon(Icons.add),);

  FloatingActionButton _deincrementButton() => FloatingActionButton(onPressed: (){updateCounter(false);
  },child: Icon(Icons.remove),);
}
