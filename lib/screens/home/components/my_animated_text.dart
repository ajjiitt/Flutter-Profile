import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/screens/home/components/flutter_coded_text.dart';

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!,
      child: Row(
        children: [
          FlutterCodedText(),
          SizedBox(
            width: defaultPadding / 2,
          ),
          Text("I build"),
          AnimatedTextKit(animatedTexts: [
            TyperAnimatedText("Responsive web and mobile app.",
                speed: Duration(milliseconds: 50)),
            TyperAnimatedText("Complete UI e-commerce",
                speed: Duration(milliseconds: 50)),
            TyperAnimatedText("IIIT-PUNE hackathon Top 25 rank",
                speed: Duration(milliseconds: 50)),
            TyperAnimatedText("PVPPCOE -> hello world",
                speed: Duration(milliseconds: 50))
          ]),
          SizedBox(
            width: defaultPadding / 2,
          ),
          FlutterCodedText(),
        ],
      ),
    );
  }
}
