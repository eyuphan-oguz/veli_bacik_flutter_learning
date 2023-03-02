import 'dart:io';

import 'package:dio/dio.dart';
import 'package:veli_bacik_flutter_learning/202/service/post_model.dart';

class PostService{

   final Dio _dio;

   PostService() :_dio=Dio(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com/'));


  Future<bool> addItemToService(PostModel postModel)async{
    final response= await _dio.post('posts',data: postModel);

    return response.statusCode==HttpStatus.created;

  }

  Future<List<PostModel>?> fetchPostItemsAdvance()async{
    try{
      final response=await _dio.get(_PostServicePaths.posts.name);

      if(response.statusCode == HttpStatus.ok){
        final _datas=response.data;

        if(_datas is List){

          return _datas.map((e) => PostModel.fromJson(e)).toList();


        }

      }
    }catch(e){

    }
      return null;

  }
}


enum _PostServicePaths{
  posts,comments
}