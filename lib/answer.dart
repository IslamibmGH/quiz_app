import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
// foregroundColor: MaterialStateProperty.all(Colors.white) for the ElevatedButton

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(70, 2, 70, 2),
      padding: EdgeInsets.all(1),
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue),
            foregroundColor: MaterialStateProperty.all(Colors.white)),
        child: Text(
          answerText,
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: selectHandler,
      ),
    );
  }
}
