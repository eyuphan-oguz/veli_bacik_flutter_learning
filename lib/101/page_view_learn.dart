import 'package:flutter/material.dart';
import 'package:veli_bacik_flutter_learning/101/icon_learn.dart';
import 'package:veli_bacik_flutter_learning/101/image_learn.dart';
import 'package:veli_bacik_flutter_learning/101/stack_learn.dart';


class PageViewLearn extends StatefulWidget {
  const PageViewLearn({Key? key}) : super(key: key);

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  final _pageController=PageController(viewportFraction: 0.9);
  int _currentPageIndex=0;

  void _updatePageIndex(int index){
    setState(() {
      _currentPageIndex=index;
    });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Text(_currentPageIndex.toString()),
          ),
          Spacer(),
          FloatingActionButton(
            onPressed: (){
              _pageController.previousPage(duration: _DurationUtility._durationLow, curve: Curves.slowMiddle);
            },
            child: Icon(Icons.arrow_left),
          ),
          FloatingActionButton(
            onPressed: (){
              _pageController.nextPage(duration:_DurationUtility._durationLow , curve: Curves.slowMiddle);

            },
            child: Icon(Icons.arrow_right),
          ),
        ],
      ),
      appBar: AppBar(),
      body: PageView(
        padEnds: true,
        controller: _pageController,
        onPageChanged: _updatePageIndex,
        children: [
          Container(color: Colors.red,),
          IconLearn(),
          StackLearn(),
          Container(color: Colors.green,),
        ],
      ),
    );
  }
}


class _DurationUtility{
  static const _durationLow=Duration(seconds: 1 );
}
