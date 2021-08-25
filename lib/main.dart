import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile/utils/constants.dart';

import 'pages/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
         primaryColor: primaryColor,
         scaffoldBackgroundColor: bgColor,
         canvasColor: bgColor,
         textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme).apply(
           bodyColor: Colors.white
         ).copyWith(
           bodyText1: TextStyle(color: bodyTextColor),
            bodyText2: TextStyle(color: bodyTextColor),
         ),
      ),
      home: HomeScreen(),
    );
  }
}