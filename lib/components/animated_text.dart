
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constants.dart';
import '../utils/custom_responsive.dart';

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      // it applies same style to all the widgets under it
      style: Theme.of(context).textTheme.subtitle1!,
      maxLines: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          if (!CustomResponsive.isMobile(context))
            const SizedBox(width: defaultPadding / 2),
          Text('I am a Software Engineer',style: GoogleFonts.acme(textStyle: const TextStyle(fontSize: 15, color: customSurfaceWhite))),
          const SizedBox(height: defaultPadding,),

          Text('based in Kenya ,specializing in building high quality mobile and',style: GoogleFonts.acme(textStyle: const TextStyle(fontSize: 15, color: customSurfaceWhite))),
          const SizedBox(height: defaultPadding,),
          Text('web applications with a strong passion of open source work',style: GoogleFonts.acme(textStyle: const TextStyle(fontSize: 15, color: customSurfaceWhite))),
          if (!CustomResponsive.isMobile(context))
            const SizedBox(width: defaultPadding ),

        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText(

          "based in Kenya ,specializing in building high quality mobile and",
          speed: Duration(milliseconds: 60),

        ),
        TyperAnimatedText(
          " web applications with a strong passion of open source work",
          speed: Duration(milliseconds: 60),
        ),

      ],
    );
  }
}

