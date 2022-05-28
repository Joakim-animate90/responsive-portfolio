import 'package:flutter/material.dart';

import '../utils/constants.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: customSurfaceWhite,
        child: Column(
          children: [
            const Spacer(flex: 2),
            const CircleAvatar(


              radius: 50,
              foregroundImage: AssetImage("assets/images/wolf.png"),
            ),
            Spacer(),
            Text(
              "Joakim Bwire",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            const Text(
              "Flutter Developer",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}