import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constants.dart';
import 'animated_circular_indicator.dart';

class Skills extends StatelessWidget {
  const Skills({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
         Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Text(
            "Skills",
            style: GoogleFonts.acme(textStyle: const TextStyle(fontSize: 22, color: black)),

          ),
        ),
        Row(
          children:const [
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.8,
                label: "Flutter",
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.80,
                label: "Django",
              ),
            ),
            SizedBox(width: defaultPadding),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.75,
                label: "Firebase",
              ),
            ),
          ],
        ),
      ],
    );
  }
}