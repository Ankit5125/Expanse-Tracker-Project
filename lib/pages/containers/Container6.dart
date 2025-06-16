import 'package:expense_tracker/utils/constants.dart';
import 'package:expense_tracker/widgets/ProductCardDesktop.dart';
import 'package:expense_tracker/widgets/ProductCardMobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container6 extends StatefulWidget {
  const Container6({super.key});

  @override
  State<Container6> createState() => _Container6State();
}

class _Container6State extends State<Container6> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (c) => mobileContainer(),
      desktop: (p0) => desktopContainer(),
    );
  }

  Widget mobileContainer() => Container(
    height: 700,
    color: Colors.white,
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "The Product we work with.",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 55,
            height: 1,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim aumsan nisi, tincidunt vel. Enim ipsum, at quis ullamcorper eget ut.",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey.shade400, fontSize: 15),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ProductCardMobile(
                iconBackground: icon1Background,
                image: crossPlatform,
                name: "Cross platform",
                description:
                    "Elit esse cillum dolore eu fugiat nulla \npariatur",
              ),
              SizedBox(width: 20),
              ProductCardMobile(
                iconBackground: icon2Background,
                image: cloudSever,
                name: "Cloud server",
                description:
                    "Elit esse cillum dolore eu fugiat nulla \npariatur",
              ),
              SizedBox(width: 20),
              ProductCardMobile(
                iconBackground: icon3Background,
                image: js,
                name: "Pure Javascript",
                description:
                    "Elit esse cillum dolore eu fugiat nulla \npariatur",
              ),
            ],
          ),
        ),
      ],
    ),
  );

  Widget desktopContainer() => Container(
    height: 800,
    color: Colors.white,
    padding: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 30),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "The Product we\nwork with.",
              style: TextStyle(fontSize: w! / 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "Tellus lacus morbi sagittis lacus in. \nAmet nisl at mauris enim aumsan \nnisi, tincidunt vel. Enim ipsum, at \nquis ullamcorper eget ut.",
              style: TextStyle(color: Colors.grey.shade400),
            ),
          ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProductCardDesktop(
              iconBackground: icon1Background,
              image: crossPlatform,
              name: "Cross platform",
              description: "Elit esse cillum dolore eu fugiat nulla \npariatur",
            ),
            SizedBox(width: 20),
            ProductCardDesktop(
              iconBackground: icon2Background,
              image: cloudSever,
              name: "Cloud server",
              description: "Elit esse cillum dolore eu fugiat nulla \npariatur",
            ),
            SizedBox(width: 20),
            ProductCardDesktop(
              iconBackground: icon3Background,
              image: js,
              name: "Pure Javascript",
              description: "Elit esse cillum dolore eu fugiat nulla \npariatur",
            ),
          ],
        ),
      ],
    ),
  );
}
