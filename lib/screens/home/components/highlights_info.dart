import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';

import 'animated_counter.dart';
import 'highlights_sub.dart';


class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          HighLights(
            counter: AnimatedCounter(
              value: 100,
              text: "+",
            ),
            label: 'Subscribers',
          ),
          HighLights(
            counter: AnimatedCounter(
              value: 100,
              text: "+",
            ),
            label: 'Subscribers',
          ),
          HighLights(
            counter: AnimatedCounter(
              value: 100,
              text: "+",
            ),
            label: 'Subscribers',
          ),
          HighLights(
            counter: AnimatedCounter(
              value: 100,
              text: "+",
            ),
            label: 'Subscribers',
          ),
          SizedBox(width: defaultPadding/2,)
        ],
      ),
    );
  }
}