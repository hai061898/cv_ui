import 'package:flutter/material.dart';
import 'package:profile/pages/main/components/knowledges.dart';
import 'package:profile/utils/constants.dart';

import 'button_download.dart';
import 'coding.dart';
import 'info.dart';
import 'my_info.dart';
import 'skill.dart';
import 'social_media.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            My_Info(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    Info(
                      title: "Residence",
                      text: "District 10",
                    ),
                    Info(
                      title: "City",
                      text: "Ho Chi Minh",
                    ),
                    Info(
                      title: "Age",
                      text: "22",
                    ),
                    Skill(),
                    SizedBox(height: defaultPadding),
                    Coding(),
                    Knowledges(),
                    Divider(),
                    SizedBox(height: defaultPadding / 2),
                    Download(),
                    SocialMedia(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
