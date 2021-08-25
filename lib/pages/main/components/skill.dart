import 'package:flutter/material.dart';
import 'package:profile/pages/main/components/animated_progress_indicator.dart';
import 'package:profile/utils/constants.dart';

class Skill extends StatelessWidget {
  const Skill({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(
              vertical: defaultPadding),
          child: Text(
            "Skills",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.7,
                label: "Flutter",
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.4,
                label: "Node js",
              ),
            ),
          ],
        ),
      ],
    );
  }
}
