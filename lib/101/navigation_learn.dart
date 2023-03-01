import 'package:flutter/material.dart';
import 'package:veli_bacik_flutter_learning/101/image_learn.dart';

import 'navigate_detail_learn.dart';


class NavigationLearn extends StatefulWidget {
  const NavigationLearn({Key? key}) : super(key: key);

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn> with NavigatorManager {

  List<int>selectedItems=[];

  void addSelected(int index,bool isAdd){
    setState(() {
     isAdd? selectedItems.add(index) : selectedItems.remove(index);
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView.builder(itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextButton(
            onPressed: ()async{
              final response= await navigateToWidgetNormal<bool>(context, NavigateDetailLearnDart(isOkey: selectedItems.contains(index),));

              if(response is bool){
                addSelected(index,response);
              }
            },
            child: Placeholder(
              color: selectedItems.contains(index) ? Colors.green :Colors.red,
            ),
          ),
        );
      }),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.navigation_rounded),
        onPressed: () {

        },
      ),
    );
  }
}


mixin NavigatorManager{
  //push isleminde future<T> donuyor bu da sana yan sayfadan data gelebilir ve sende
  //bunu yakalayabilirsin demektir

  void navigateToWidget(BuildContext context,Widget widget){
    Navigator.of(context).push(MaterialPageRoute(builder: (context){
      return widget;
    },
        fullscreenDialog: true, //IOS daki gibi olur
        settings: RouteSettings()
    ));
  }

  Future<T?> navigateToWidgetNormal <T>(BuildContext context,Widget widget){
    return Navigator.of(context).push<T>(MaterialPageRoute(builder: (context){
      return widget;
    },
        fullscreenDialog: true, //IOS daki gibi olur
        settings: RouteSettings()
    ));
  }
}
