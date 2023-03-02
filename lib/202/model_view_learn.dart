import 'package:flutter/material.dart';
import 'package:veli_bacik_flutter_learning/202/model_learn.dart';

class ModelLearnView extends StatefulWidget {
  const ModelLearnView({Key? key}) : super(key: key);

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {
  final user9=PostModel8(title: "eyup");

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final user1=PostModel1()
    ..body="" ..title='';//bizden hicbirsey istemedi cunku nullable olabilir dedik
    final user2=PostModel2(userId: 1, id: 2, title: "title", body: "body");
    final user3=PostModel3(1, 2, "title", "body");
    //user3.body="a";
    final user4=PostModel4(userId: 1, id: 2, title: "title", body: "body");
    final user5=PostModel5(userId: 1, id: 2, title: "title", body: "body");
    final user6=PostModel6(userId: 1, id: 2, title: "title", body: "body");
    final user7=PostModel7(title: "");
    final user8=PostModel8(title: "eyup");
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(user9.title ?? ""),),
    );
  }
}
