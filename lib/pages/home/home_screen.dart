import 'package:flutter/material.dart';
import 'package:profile/pages/main/main.dart';

import 'components/homebanner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
      ],
      
    );
  }
}