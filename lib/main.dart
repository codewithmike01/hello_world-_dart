import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQustion() {
    setState(() {
      if (_questionIndex == 0) {
        _questionIndex = _questionIndex + 1;
      } else {
        _questionIndex = _questionIndex - 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What is your favourite programming language',
      'What is you active time'
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
        title: const Text('My mobile app'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            questions[_questionIndex],
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
              onPressed: _answerQustion, child: const Text('Answer 1')),
          ElevatedButton(
              onPressed: _answerQustion, child: const Text('Answer 2')),
          ElevatedButton(
              onPressed: _answerQustion, child: const Text('Answer 3'))
        ],
      ),
    ));
  }
}
