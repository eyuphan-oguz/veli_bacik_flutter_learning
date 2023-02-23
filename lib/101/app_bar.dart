import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class AppBarView extends StatelessWidget {
  const AppBarView({Key? key}) : super(key: key);
  final String _title="Welcome Learn";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        actionsIconTheme: IconThemeData(color: Colors.red),
        toolbarTextStyle: TextStyle(color: Colors.red),
        leading: const Icon(Icons.chevron_left),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.email_rounded)),
          Center(child: CircularProgressIndicator(),)
        ],
      ),
    );
  }
}
