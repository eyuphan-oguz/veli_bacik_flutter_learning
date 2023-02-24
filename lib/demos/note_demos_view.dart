import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:veli_bacik_flutter_learning/101/image_learn.dart';
import 'package:veli_bacik_flutter_learning/101/padding_learn.dart';


class NotDemos extends StatelessWidget {
  const NotDemos({Key? key}) : super(key: key);
  final _title="Create your first note";
  final _description="Add a note";
  final _createNote="Create a Note";
  final _importNotes="Import Notes";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Padding(
        padding: ProjectPadding.pagePaddingVertical,
        child: Center(
          child: Column(
            children: [
              PngImage(path: ImageItems().appleBook),
              TitleWidget(title: _title),
              Padding(
                padding: PaddingItems.verticalPadding,
                child: SubTitleWidget(title: _description*30),
              ),
              const Spacer(),
              _createButton(context),

              TextButton(onPressed: (){}, child: Text(_importNotes)),
              SizedBox(height: ButtonHeights.buttonNormalHeight,)

            ],
          ),
        ),
      ),
    );
  }

  ElevatedButton _createButton(BuildContext context) {
    return ElevatedButton(onPressed: (){}, child: SizedBox(height:ButtonHeights.buttonNormalHeight,child: Center(child: Text(_createNote,
            style: Theme.of(context).textTheme.headline5,))));
  }
}

class SubTitleWidget extends StatelessWidget {
  const SubTitleWidget({
    Key? key, this.textAlign=TextAlign.center, required this.title,
  }) : super(key: key);
  final TextAlign? textAlign;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title,
      textAlign:TextAlign.center,
      style: Theme.of(context).textTheme.subtitle1?.copyWith(color: Colors.black),);
  }
}

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title,style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.black,fontWeight: FontWeight.w800),);
  }
}

class PaddingItems{
  static const EdgeInsets horizontalPadding= EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets verticalPadding= EdgeInsets.symmetric(vertical: 10);
}


class ButtonHeights{
  static const double buttonNormalHeight=50;
}