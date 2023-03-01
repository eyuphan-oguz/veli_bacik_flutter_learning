import 'package:flutter/material.dart';
import 'package:veli_bacik_flutter_learning/101/icon_learn.dart';
import 'package:veli_bacik_flutter_learning/101/image_learn.dart';


class TabLearn extends StatefulWidget {
  const TabLearn({Key? key}) : super(key: key);

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin{
  late final TabController _tabController;
  final double _notchedMargin=10;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController=TabController(length: _MyTabViews.values.length, vsync: this);
  }
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: _MyTabViews.values.length, child: Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(onPressed: (){
        _tabController.animateTo(_MyTabViews.home.index);//0. indexli sayfaya gecer
      },),
      extendBody: true, //floatActionButtonun arkasindaki oyuklugu siler
      bottomNavigationBar: BottomAppBar(
        notchMargin: _notchedMargin,
        shape: CircularNotchedRectangle(),// floatactionbuttonun arkasinda oyuklugu saglar
        child: buildTabBar(),
      ),
      appBar: AppBar(
        //bottom: TabBar(
         // controller:_tabController ,
         // tabs: [
         //   Tab(text: "Page1",),
         //   Tab(text: "Page2",),
          //],
        //),
      ),
      body: buildTabBarView(),
    ));
  }

  TabBar buildTabBar() {
    return TabBar(
        controller: _tabController,
        // bu parametrel
        // eri theme kisminda materialApp icinde yaz
        indicatorColor: Colors.white,
        //isScrollable: true, sayfalar arasi sikistirmayi saglar
        unselectedLabelColor: Colors.blue,
        padding: EdgeInsets.zero,
        onTap: (int index){},
        tabs: _MyTabViews.values.map((e) => Tab(text: e.name,)).toList()
      );
  }

  TabBarView buildTabBarView() {
    return TabBarView(
      controller: _tabController,
      children: [
      ImageLearn(),
      IconLearn(),
      IconLearn(),
      IconLearn(),
    ],);
  }
}

enum _MyTabViews{
  home,setting,favorite,profile
}

extension _MyTabViewExtension on _MyTabViews{



}