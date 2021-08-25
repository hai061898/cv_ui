import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:profile/utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class Download extends StatelessWidget {
  const Download({
    Key? key,
  }) : super(key: key);

  Future<void> launchURL(String link) async => await canLaunch(link)
      ? await launch(link)
      : throw 'Could not launch $link';
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        launchURL("https://github.com/hai061898/cv_ui");
      },
      child: FittedBox(
        child: Row(
          children: [
            Text(
              "DOWNLOAD CV",
              style: TextStyle(
                color: Theme.of(context).textTheme.bodyText1!.color,
              ),
            ),
            SizedBox(width: defaultPadding / 2),
            SvgPicture.asset("assets/icons/download.svg")
          ],
        ),
      ),
    );
  }
}
