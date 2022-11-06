// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String questionText;

  Question(this.questionText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      questionText,
      textAlign: TextAlign.center,
    );
  }
}
