import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Result extends StatelessWidget {
  final int finalScore;
  final VoidCallback resetHandler;

  Result(this.finalScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (finalScore <= 8) {
      resultText = 'You\'re Innocent!';
    } else if (finalScore <= 12) {
      resultText = 'You\'re very likeable!';
    } else if (finalScore <= 16) {
      resultText = 'You\'re kinda weird, sorry!';
    } else {
      resultText = 'You\'re off, you got some thinking to do!';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Text(
              resultPhrase,
              style: GoogleFonts.montserrat(
                  fontSize: 26, fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(10, 50, 10, 0),
            child: TextButton(
              onPressed: resetHandler,
              child: Text('Restart Quiz?', style: TextStyle(fontSize: 20)),
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.green),
              ),
            ),
          )
        ],
      ),
    );
  }
}
