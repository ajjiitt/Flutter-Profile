import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/responsive.dart';
import 'package:flutter_profile/screens/home/components/flutter_coded_text.dart';

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!,
      maxLines: 1,
      child: Row(
        children: [
          if (!Responsive.isMobileLarge(context)) FlutterCodedText(),
          if (!Responsive.isMobileLarge(context))
            SizedBox(
              width: defaultPadding / 2,
            ),
          Text("I build"),
          Responsive.isMobile(context)
              ? Expanded(
                  child: AnimatedText(),
                )
              : AnimatedText(),
          if (!Responsive.isMobileLarge(context))
            SizedBox(
              width: defaultPadding / 2,
            ),
          if (!Responsive.isMobileLarge(context)) FlutterCodedText(),
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(animatedTexts: [
      TyperAnimatedText("Responsive web and mobile app.",
          speed: Duration(milliseconds: 50)),
      TyperAnimatedText("Complete UI e-commerce",
          speed: Duration(milliseconds: 50)),
      TyperAnimatedText("IIIT-PUNE hackathon Top 25 rank",
          speed: Duration(milliseconds: 50)),
      TyperAnimatedText("PVPPCOE -> hello world",
          speed: Duration(milliseconds: 50))
    ]);
  }
}
