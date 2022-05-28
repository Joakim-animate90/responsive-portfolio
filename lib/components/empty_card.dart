import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:res_portfolio/utils/constants.dart';

import '../utils/custom_responsive.dart';
import 'animated_text.dart';

class EmptyCardAbout extends StatelessWidget {
  final double? width;
  final double? height;

  const EmptyCardAbout({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
      decoration: const BoxDecoration(
        //color: background,
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: customSurfaceWhite,
            blurRadius: 4.0,
            offset: Offset(0.0, 4.0),
          ),
        ],
      ),
      child: Stack(
        fit: StackFit.loose,
        children: [
          Image.asset(
            "assets/images/unsplash-ant.png",
            fit: BoxFit.cover,
          ),
          Container(color: background.withOpacity(0.66)),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Hi , my name is Joakim Bwire!",
                  style: CustomResponsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headline4!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontStyle:FontStyle.normal,
                  )
                      : Theme.of(context).textTheme.headline5!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: defaultPadding,),
                if (CustomResponsive.isMobile(context))
                  const SizedBox(height: defaultPadding),
                  const MyBuildAnimatedText(),
                const SizedBox(height: defaultPadding*3),

                  ElevatedButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: defaultPadding * 2,
                          vertical: defaultPadding),
                      backgroundColor: primaryColor,
                    ),
                    child: const Text(
                      "Explore Projects",
                      style: TextStyle(color: black),
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
class EmptyCard extends StatelessWidget {
  final double? width;
  final double? height;

  const EmptyCard({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
    decoration: const BoxDecoration(
    //color: background,
    borderRadius: BorderRadius.all(Radius.circular(4.0)),
    boxShadow: <BoxShadow>[
    BoxShadow(
    color: Colors.black12,
    blurRadius: 4.0,
    offset: Offset(0.0, 4.0),
    ),
    ],
    ),
      child:,
    );}}