import 'package:flutter/material.dart';

// ignore: must_be_immutable
class myTextButton extends StatelessWidget {
  String s;
  myTextButton({required this.s, super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(s, style: TextStyle(color: Colors.black, fontSize: 18)),
    );
  }
}
