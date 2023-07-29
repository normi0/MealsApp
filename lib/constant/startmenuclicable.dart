import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class StartScreenContainer extends StatelessWidget {
  StartScreenContainer({
    super.key,
    required this.color,
    required this.content,
  });

  Color color;
  String content;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      color: color,
      child: Text(
        content,
        style: GoogleFonts.lato(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
