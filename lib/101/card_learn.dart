import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
          _CustomCard(child: SizedBox(height: 100,width: 300,child: Center(child: Text("Eyup"),),),)
      ],),
    );
  }
}


class ProjectMargins{
  static const cardMargin=EdgeInsets.all(10);
}

class _CustomCard extends StatelessWidget{
  const _CustomCard({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: ProjectMargins.cardMargin,
      color: Theme.of(context).colorScheme.primary,
      elevation: 100,
      child: child);
  }

}