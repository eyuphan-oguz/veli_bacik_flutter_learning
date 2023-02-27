import 'package:flutter/material.dart';

import 'language/language_items.dart';

class CounterHelloButton extends StatefulWidget {
  const CounterHelloButton({Key? key}) : super(key: key);

  @override
  State<CounterHelloButton> createState() => _CounterHelloButtonState();
}

class _CounterHelloButtonState extends State<CounterHelloButton> {
  int _counterCustom=0;
  final String welcomeTitle=LanguageItems.welcomeTitle;

  void updateCounter(){
    setState(() {
      _counterCustom++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: updateCounter, child: Text("$welcomeTitle $_counterCustom"));
  }
}
