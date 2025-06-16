import 'package:expense_tracker/utils/constants.dart';
import 'package:expense_tracker/widgets/CommonImageContainer.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container4 extends StatefulWidget {
  const Container4({super.key});

  @override
  State<Container4> createState() => _Container4State();
}

class _Container4State extends State<Container4> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (p0) => mobileContainer(),
      desktop: (p0) => desktopContainer(),
    );
  }

  Widget mobileContainer() => commonContainerMobile(
    "free some cost",
    "Save cost \nfor you and \nfamily",
    "Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.",
    illustration3,
  );

  Widget desktopContainer() => commonContainerDesktop(
    "free some cost",
    "Save cost \nfor you and \nfamily",
    "Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.",
    illustration3,
    true,
  );
}
