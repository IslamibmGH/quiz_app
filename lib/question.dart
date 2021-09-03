import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Question extends StatelessWidget {
  final String questionText; //final makes questionText unchangable from
  //within the file, only from new data that will cause a rebuild in main.dart
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(15),
      child: Text(
        questionText,
        style:
            GoogleFonts.montserrat(fontSize: 25, fontWeight: FontWeight.w400),
        textAlign: TextAlign.center,
      ),
    );
  }
}
// all the above is made to update and rebuild the Question class to show the new
// data or state on the screen.
