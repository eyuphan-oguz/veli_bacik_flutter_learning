import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget with _ColorsUtility {
  CustomWidgetLearn({Key? key}) : super(key: key);
  final String title = "Food";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: CustomFoodButton(
                      redColor: redColor, title: title, whiteColor: whiteColor,onPressed: (){},),
                ),
              ),
            ),
          ],
        ));
  }
}

class _PaddingUtility {
  final EdgeInsets normalPadding = EdgeInsets.all(8);
  final EdgeInsets normal2xPadding = EdgeInsets.all(16);
}

class CustomFoodButton extends StatelessWidget with _ColorsUtility, _PaddingUtility{
   CustomFoodButton({
    Key? key,
    required this.redColor,
    required this.title,
    required this.whiteColor, required this.onPressed,
  }) : super(key: key);

  final Color redColor;
  final String title;
  final Color whiteColor;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style:
          ElevatedButton.styleFrom(primary: redColor, shape: StadiumBorder()),
      onPressed: onPressed,
      child: Padding(
        padding: normal2xPadding,
        child: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .subtitle2
              ?.copyWith(color: whiteColor, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class _ColorsUtility {
  final Color redColor = Colors.red;
  final Color whiteColor = Colors.white;
}
