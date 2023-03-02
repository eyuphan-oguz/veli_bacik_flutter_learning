import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:veli_bacik_flutter_learning/202/service/post_model.dart';


class ServicePostLearn extends StatefulWidget {
  const ServicePostLearn({Key? key}) : super(key: key);

  @override
  State<ServicePostLearn> createState() => _ServicePostLearnState();
}

class _ServicePostLearnState extends State<ServicePostLearn> {
  List<PostModel>? _items;
  String? name;
  bool _isLoading=false;
  final String _baseUrl="https://jsonplaceholder.typicode.com/";

  late final Dio _dio;

  TextEditingController _titleController=TextEditingController();
  TextEditingController _bodyController=TextEditingController();
  TextEditingController _idController=TextEditingController();

  void _changeLoading(){
    setState(() {
      _isLoading=!_isLoading;
    });
  }


  Future<void> _addItemToService(PostModel postModel)async{
    _changeLoading();
   final response= await _dio.post('posts',data: postModel);

   if(response.statusCode==HttpStatus.created){
     name="Basarili";
   }
    _changeLoading();

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    name="eyup";
    _dio=Dio(BaseOptions(baseUrl:_baseUrl ));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name ?? ""),actions: [_isLoading ? CircularProgressIndicator.adaptive():SizedBox()],),
      body: Column(
        children: [
          TextField(
            controller:_titleController,
            decoration: InputDecoration(label: Text("Title")),),
          TextField(controller:_bodyController,decoration: InputDecoration(label: Text("Body")),),
          TextField(controller:_idController,keyboardType: TextInputType.number,decoration: InputDecoration(label: Text("UserId")),),
          TextButton(onPressed:_isLoading ? null :  (){
            if(_titleController.text.isNotEmpty && _bodyController.text.isNotEmpty && _idController.text.isNotEmpty){
              final model=PostModel(body: _bodyController.text,title: _titleController.text,userId: int.tryParse(_idController.text));
              _addItemToService(model);
            }
          }, child: Text("Send"))

        ],
      )
    );
  }
}

class _PostCard extends StatelessWidget {
  const _PostCard({
    Key? key, required PostModel? model,
  }) :_model=model, super(key: key);

  final PostModel? _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        title: Text(_model?.title ?? ""),
        subtitle: Text(_model?.body ?? ""),
      ),
    );
  }
}
