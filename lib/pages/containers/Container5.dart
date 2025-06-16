import 'package:expense_tracker/utils/constants.dart';
import 'package:expense_tracker/widgets/CommonImageContainer.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container5 extends StatefulWidget {
  const Container5({super.key});

  @override
  State<Container5> createState() => _Container5State();
}

class _Container5State extends State<Container5> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (p0) => mobileContainer(),
      desktop: (p0) => desktopContainer(),
    );
  }

  Widget mobileContainer() => commonContainerMobile(
    "Use anytime",
    "Use anytime \nwhen you \nneed",
    "Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.",
    illustration4,
  );

  Widget desktopContainer() => commonContainerDesktop(
    "Use anytime",
    "Use anytime \nwhen you \nneed",
    "Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.",
    illustration4,
    false,
  );
}
