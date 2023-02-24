import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
              height: 400,
              width: 300,
              child: PngImage(path: ImageItems().appleBook,))
        ],
      ),
    );
  }
}


class ImageItems{
  final String appleWithBook="apple-and-book-png-transparent-apple-and-book-images-274565";
  final String appleBook="ic_apple_with_school";
}


class PngImage extends StatelessWidget {
  const PngImage({Key? key, required this.path}) : super(key: key);
  final String path;

  @override
  Widget build(BuildContext context) {
    return Image.asset(_nameWithPath,fit: BoxFit.cover,);
  }

  String get _nameWithPath=>'assets/png/$path.png';

}

