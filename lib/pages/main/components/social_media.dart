import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:profile/utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';



class SocialMedia extends StatelessWidget {
  const SocialMedia({
    Key? key,
  }) : super(key: key);

  Future<void> launchURL(String link) async => await canLaunch(link)
      ? await launch(link)
      : throw 'Could not launch $link';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defaultPadding),
      color: Color(0xFF24242E),
      child: Row(
        children: [
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/linkedin.svg"),
          ),
          IconButton(
            onPressed: () {
              launchURL("https://github.com/hai061898");
            },
            icon: SvgPicture.asset("assets/icons/github.svg"),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/twitter.svg"),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
