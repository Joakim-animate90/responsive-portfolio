import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constants.dart';

class AnimatedCircularProgressIndicator extends StatelessWidget {
  const AnimatedCircularProgressIndicator({
    Key? key,
    required this.percentage,
    required this.label,
  }) : super(key: key);

  final double percentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: percentage),
            duration: defaultDuration,
            builder: (context, double value, child) => Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                  value: value,
                  color: green,
                  backgroundColor: customSurfaceWhite,
                ),
                Center(
                  child: Text(
                    "${(value * 100).toInt()}%",
                    style: GoogleFonts.acme(textStyle: const TextStyle(fontSize: 18, color: black)),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: defaultPadding ),
        Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: GoogleFonts.acme(textStyle: const TextStyle(fontSize: 18, color: black)),
        ),
      ],
    );
  }
}