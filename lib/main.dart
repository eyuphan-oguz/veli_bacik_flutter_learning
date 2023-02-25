import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:veli_bacik_flutter_learning/101/button_learn.dart';
import 'package:veli_bacik_flutter_learning/101/container_sized_box_learn.dart';
import 'package:veli_bacik_flutter_learning/101/image_learn.dart';
import 'package:veli_bacik_flutter_learning/101/scaffold_learn.dart';
import 'package:veli_bacik_flutter_learning/101/stateless_learn.dart';
import 'package:veli_bacik_flutter_learning/101/text_learn_view.dart';

import '101/app_bar.dart';
import '101/card_learn.dart';
import '101/color_learn.dart';
import '101/column_row_learn.dart';
import '101/custom_widget_learn.dart';
import '101/icon_learn.dart';
import '101/indicator_learn.dart';
import '101/list_tile_learn.dart';
import '101/padding_learn.dart';
import 'demos/note_demos_view.dart';

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
      theme: ThemeData.dark().copyWith(
        progressIndicatorTheme: ProgressIndicatorThemeData(color: Colors.red),
        cardTheme: CardTheme(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
        appBarTheme: AppBarTheme(
          centerTitle: true,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          backgroundColor: Colors.transparent,
          elevation: 0,

        )
      ),
      home: ColumnRowLearn(),
    );
  }
}

