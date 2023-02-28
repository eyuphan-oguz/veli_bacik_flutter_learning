import 'package:flutter/material.dart';

class StatefullLifeCycle extends StatefulWidget {
  const StatefullLifeCycle({Key? key, required this.message}) : super(key: key);
  final String message;

  @override
  State<StatefullLifeCycle> createState() => _StatefullLifeCycleState();
}

class _StatefullLifeCycleState extends State<StatefullLifeCycle> {
  String _message='';
  late final bool _isOdd;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    //_computeName();
    print("didChangeDependencies");
  }

  @override
  void didUpdateWidget(covariant StatefullLifeCycle oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    if(oldWidget.message!=widget.message){
      print(oldWidget.message);
      //old widget.message degeri degistirigimzde bir onceki message alanini alir orn eyup yazdin sonrasinda
      //eyuphan yazdirdin oldWidget.message=eyup degerini alir
      print("didUpdateWidget");
      _computeName();
      setState(() {});
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("dispose");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _message=widget.message;
    _isOdd=widget.message.length.isOdd;
    //_computeName();
    print("initState");

  }

  void _computeName() {
    if(widget.message.length.isOdd){
      _message+=" Cift";
    }else{
      _message+=" Tek";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_message),
      ),
      body: widget.message.length.isOdd ? TextButton(onPressed: (){},child: Text(_message),):
      ElevatedButton(onPressed: (){
        setState(() {
          _message="a";
        });
      }, child: Text(_message)),
    );
  }
}
