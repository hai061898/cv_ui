import 'package:flutter/material.dart';

import 'package:profile/pages/home/components/Recomendation.dart';
import 'package:profile/pages/main/main.dart';

import 'components/homebanner.dart';
import 'components/my_project.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        MyProject(),
        Recommendations(),
      ],
      
    );
  }
}