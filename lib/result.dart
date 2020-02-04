import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 15) {
      resultText = 'You are so cool';
    } else if (resultScore <= 20) {
      resultText = 'You are, like, the best';
    } else if (resultScore <= 25) {
      resultText = 'Oh my god, you slay';
    } else if (resultScore <= 30) {
      resultText = 'My kwenn, you da bomb!';
    } else {
      resultText = 'Boom. Dead. Marry me, queen';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      ),
    );
  }
}
