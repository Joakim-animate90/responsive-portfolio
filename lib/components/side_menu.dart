import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/constants.dart';
import 'my_profile.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: background,
      child: SafeArea(
        child: Column(
          children: [
            MyProfile(),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(defaultPadding),

                  child:Column(
                  children: [

              Container(
                  color:background,
                    child:TextButton(
                      style:ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(background)),
                      onPressed: () {},
                      child: FittedBox(
                        child: Row(
                          children: [
                            const Text(
                              "About Me",
                              style: TextStyle(
                                color:primaryColor
                              ),
                            ),
                            const SizedBox(width: defaultPadding / 2),
                            SvgPicture.asset("")
                          ],
                        ),
                      ),
                    ),
              ),
                    const Divider(),
                    const SizedBox(height: defaultPadding),
                    TextButton(
                      style:ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(background)),
                      onPressed: () {},
                      child: FittedBox(
                        child: Row(
                          children: [
                            const Text(
                              "Certifications",
                              style: TextStyle(
                                  color:primaryColor
                              ),
                            ),
                            const SizedBox(width: defaultPadding),
                            SvgPicture.asset("")
                          ],
                        ),
                      ),
                    ),

                    const Divider(),
                    const SizedBox(height: defaultPadding),
                    TextButton(
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(background)),
                      onPressed: () {},
                      child: FittedBox(
                        child: Row(
                          children: [
                            const Text(
                              "My Projects",
                              style: TextStyle(
                                  color:primaryColor
                              ),
                            ),
                            const SizedBox(width: defaultPadding / 2),
                            SvgPicture.asset("")
                          ],
                        ),
                      ),
                    ),

                    const Divider(),
                    const SizedBox(height: defaultPadding),
                    TextButton(
                      style:ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(background)) ,
                      onPressed: () {},
                      child: FittedBox(
                        child: Row(
                          children: [
                            const Text(
                              "DOWNLOAD CV",
                              style: TextStyle(
                                color: primaryColor
                              ),
                            ),
                            const SizedBox(width: defaultPadding ),
                            SvgPicture.asset("assets/icons/download.svg"),

                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: defaultPadding),
                      color: background,
                      child: Row(
                        children: [
                          const Spacer(),
                          IconButton(
                            color:background,
                            onPressed: () {},
                            icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                          ),
                          IconButton(
                            color:customSurfaceWhite ,
                            onPressed: () {},
                            icon: SvgPicture.asset("assets/icons/github.svg"),
                          ),
                          IconButton(
                            color:customSurfaceWhite ,
                            onPressed: () {},
                            icon: SvgPicture.asset("assets/icons/twitter.svg"),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),

                  ],
                ),

              ),
            ),
          ],
        ),

      ),
    );
  }
}