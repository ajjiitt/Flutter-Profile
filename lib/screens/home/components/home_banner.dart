import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';

import 'my_animated_text.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/bg.jpeg",
            fit: BoxFit.cover,
          ),
          Container(
            color: darkColor.withOpacity(0.66),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Discover my Amazing \nArt Space!",
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                MyBuildAnimatedText(),
                SizedBox(
                  height: defaultPadding,
                ),
                ElevatedButton(
                    style: TextButton.styleFrom(
                        backgroundColor: primaryColor,
                        padding: EdgeInsets.symmetric(
                            vertical: defaultPadding,
                            horizontal: 2 * defaultPadding)),
                    onPressed: () {},
                    child: Text(
                      "Explore Now",
                      style: TextStyle(color: darkColor),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
