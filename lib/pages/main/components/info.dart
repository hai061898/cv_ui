import 'package:flutter/material.dart';
import 'package:profile/utils/constants.dart';

class Info extends StatelessWidget {
  const Info({
    Key? key,
    this.title,
    this.text
  }) : super(key: key);
  final String? title, text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title!,
            style: TextStyle(color: Colors.white),
          ),
          Text(text!),
        ],
      ),
    );
  }
}