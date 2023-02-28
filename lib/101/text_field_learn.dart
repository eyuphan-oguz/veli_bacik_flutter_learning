import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../product/language/language_items.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({Key? key}) : super(key: key);

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {

  FocusNode focusNodeTextFieldOne=FocusNode();
  FocusNode focusNodeTextFieldTwo=FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            maxLength: 20,
            buildCounter:(BuildContext context,{int? currentLength,bool? isFocused, int? maxLength}){
              return _animatedContainer(currentLength);
            },
            keyboardType: TextInputType.emailAddress,
            autofillHints: [AutofillHints.email],
            inputFormatters: [TextProjectInputFormatter().formatter],
            focusNode: focusNodeTextFieldOne,
            textInputAction: TextInputAction.next,
            decoration:_InputDecarator().emailInput
          ),
          TextField(focusNode: focusNodeTextFieldTwo,minLines: 2,maxLines: 4,)
        ],
      ),
    );
  }

  AnimatedContainer _animatedContainer(int? currentLength) {
    return AnimatedContainer(
          duration: Duration(milliseconds: 100),
          width: 10.0*(currentLength ?? 0),height:10,color: Colors.green[(100*(currentLength ??0)~/2)],);
  }
}


class TextProjectInputFormatter{

  final formatter=TextInputFormatter.withFunction((oldValue, newValue) {
    if(newValue.text=="a"){
      return oldValue;
    }else{
      return newValue;
    }
  });

}

class _InputDecarator{
  final emailInput=InputDecoration(
    prefixIcon: Icon(Icons.mail),
    border: OutlineInputBorder(),
    labelText: LanguageItems.mailTitle,

  );
}