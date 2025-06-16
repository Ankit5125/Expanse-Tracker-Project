import 'package:expense_tracker/utils/constants.dart';
import 'package:expense_tracker/widgets/CommonImageContainer.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container3 extends StatefulWidget {
  const Container3({super.key});

  @override
  State<Container3> createState() => _Container3State();
}

class _Container3State extends State<Container3> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (p0) => mobileContainer(),
      desktop: (p0) => desktopContainer(),
    );
  }

  Widget mobileContainer() => commonContainerMobile(
    "Alwalys online",
    "Real-time \nsupport \nwith cloud",
    "Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.",
    illustration2,
  );

  Widget desktopContainer() => commonContainerDesktop(
    "Alwalys online",
    "Real-time \nsupport \nwith cloud",
    "Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.",
    illustration2,
    false,
  );
}
