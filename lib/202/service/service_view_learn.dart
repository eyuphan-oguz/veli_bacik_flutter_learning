import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:veli_bacik_flutter_learning/202/service/post_model.dart';
import 'package:veli_bacik_flutter_learning/202/service/post_service.dart';


class ServiceLearn extends StatefulWidget {
  const ServiceLearn({Key? key}) : super(key: key);

  @override
  State<ServiceLearn> createState() => _ServiceLearnState();
}

class _ServiceLearnState extends State<ServiceLearn> {
  List<PostModel>? _items;
  String? name;
  bool _isLoading=false;
  final String _baseUrl="https://jsonplaceholder.typicode.com/";

  late final Dio _dio;
  late final PostService _postService;

  void _changeLoading(){
    setState(() {
      _isLoading=!_isLoading;
    });
  }


  Future<void> fetchPostItems()async{
    _changeLoading();
    final response=await Dio().get("https://jsonplaceholder.typicode.com/posts");

    if(response.statusCode == HttpStatus.ok){
      final _datas=response.data;

      if(_datas is List){
        setState(() {
          _items=_datas.map((e) => PostModel.fromJson(e)).toList();

        });
      }

    }
    _changeLoading();
  }


  Future<void> fetchPostItemsAdvance()async{
    _changeLoading();
    final response=await _dio.get("posts");

    if(response.statusCode == HttpStatus.ok){
      final _datas=response.data;

      if(_datas is List){
        setState(() {
          _items=_datas.map((e) => PostModel.fromJson(e)).toList();

        });
      }

    }
    _changeLoading();
  }

  Future<void> fetchPostItemsAdvanced()async{
    _changeLoading();
    _items=await _postService.fetchPostItemsAdvance();
    _changeLoading();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchPostItems();
    name="eyup";
    _dio=Dio(BaseOptions(baseUrl:_baseUrl ));
    _postService=PostService();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name ?? ""),actions: [_isLoading ? CircularProgressIndicator.adaptive():SizedBox()],),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 10),
          itemCount: _items?.length ?? 0,
          itemBuilder: (context,index){
            return _PostCard(model: _items?[index],);
      }),
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
