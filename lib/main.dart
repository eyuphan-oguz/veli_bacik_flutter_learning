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
import '101/list_view_builder_learn.dart';
import '101/list_view_learn.dart';
import '101/navigation_learn.dart';
import '101/padding_learn.dart';
import '101/page_view_learn.dart';
import '101/stack_learn.dart';
import '101/statefull_learn.dart';
import '101/statefull_life_cycle.dart';
import '101/text_field_learn.dart';
import '202/tab_learn.dart';
import 'demos/color_demos_view.dart';
import 'demos/color_life_cycle_view.dart';
import 'demos/my_collection_demos.dart';
import 'demos/note_demos_view.dart';
import 'demos/stack_demo_view.dart';

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
        bottomAppBarTheme: BottomAppBarTheme(
          shape: CircularNotchedRectangle()
        ),
        tabBarTheme: TabBarTheme(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.red,
            indicatorSize: TabBarIndicatorSize.label
        ),
        textTheme: TextTheme(subtitle1: TextStyle(color: Colors.red)),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          iconColor: Colors.red,
          border: OutlineInputBorder(),
          floatingLabelStyle: TextStyle(color: Colors.red,fontSize: 24,fontWeight: FontWeight.w600)
        ),
        progressIndicatorTheme: ProgressIndicatorThemeData(color: Colors.red),
        cardTheme: CardTheme(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
        appBarTheme: AppBarTheme(
          centerTitle: true,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          backgroundColor: Colors.transparent,
          elevation: 0,

        )
      ),
      home: TabLearn(),
    );
  }
}



