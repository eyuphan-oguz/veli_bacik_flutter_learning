import 'package:flutter/material.dart';
import 'package:veli_bacik_flutter_learning/101/container_sized_box_learn.dart';
import 'package:veli_bacik_flutter_learning/101/text_learn_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: ContainerSizedBoxLearn(),
    );
  }
}

