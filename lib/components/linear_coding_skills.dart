
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constants.dart';
import 'animated_linear_indicator.dart';

class LinearCodingSkills extends StatelessWidget {
  const LinearCodingSkills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Text(
            "Coding",
            style: GoogleFonts.acme(textStyle: const TextStyle(fontSize: 22, color: black)),
          ),
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.7,
          label: "Dart",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.70,
          label: "Python",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.9,
          label: "HTML",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.75,
          label: "CSS",
        ),
        const AnimatedLinearProgressIndicator(
          percentage: 0.70,
          label: "JavaScript",
        ),
      ],
    );
  }
}
