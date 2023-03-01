import 'package:flutter/material.dart';

class MyCollectionsDemos extends StatefulWidget {
  const MyCollectionsDemos({Key? key}) : super(key: key);

  @override
  State<MyCollectionsDemos> createState() => _MyCollectionsDemosState();
}

class _MyCollectionsDemosState extends State<MyCollectionsDemos> {
  late final List<CollectionModel> _items;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _items=CollectionItems().items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: _items.length,
          padding: PaddingUtility().paddingHorizontal,
          itemBuilder: (context,index){
        return _CategoryCard(model: _items[index]);
      }),
    );
  }
}

class _CategoryCard extends StatelessWidget {


  final CollectionModel model;

  const _CategoryCard({ Key? key , required this.model}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: PaddingUtility().paddingBottom,
      child: Padding(
        padding: PaddingUtility().paddingGeneral,
        child: Column(
          children: [
            Image.asset(model.imagePath,fit: BoxFit.cover,),

            Padding(
              padding: PaddingUtility().paddingTop,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(model.title),
                  Text("${model.title} eth"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CollectionModel{
  final String imagePath;
  final String title;
  final double price;


  CollectionModel(this.imagePath, this.title, this.price);
}


class PaddingUtility{
  final paddingTop=EdgeInsets.only(top: 10);
  final paddingBottom=EdgeInsets.only(bottom: 40);
  final paddingGeneral=EdgeInsets.only(bottom: 20);
  final paddingHorizontal=EdgeInsets.symmetric(horizontal: 20);
}


class CollectionItems{
  late final List<CollectionModel> items;

  CollectionItems(){
    items=[
      CollectionModel(ProjectImages.imageCollection, "Abstract Art", 3.4),
      CollectionModel(ProjectImages.imageCollection, "Abstract Art", 3.4),
      CollectionModel(ProjectImages.imageCollection, "Abstract Art", 3.4),
      CollectionModel(ProjectImages.imageCollection, "Abstract Art", 3.4),

    ];
  }
}

class ProjectImages{
  static const imageCollection="assets/png/image_collection.png";
}