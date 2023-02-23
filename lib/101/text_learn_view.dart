import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  const TextLearnView({Key? key, this.userName}) : super(key: key);
  final String name = "Eyuphan";

  final String? userName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "${ProjectKeys.welcome} ${name}",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.right,
          style: ProjectStyles.welcomeStyle,
        ),
        Text(
          "Welcome ${name}",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.right,
          style: Theme.of(context).textTheme.headline5?.copyWith(color: ProjectColor.welcomeColor),
        ),

        Text(userName ?? ""),

      ],
    )));
  }
}

class ProjectStyles {
  static TextStyle welcomeStyle = TextStyle(
      wordSpacing: 2,
      letterSpacing: 2,
      fontSize: 16,
      fontWeight: FontWeight.w600,
      decoration: TextDecoration.underline,
      fontStyle: FontStyle.italic);
}



class ProjectColor{
  static Color welcomeColor=Colors.yellow;
}


class ProjectKeys{
  static String welcome="Merhaba";
}

