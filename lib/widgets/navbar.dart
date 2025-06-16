import 'package:expense_tracker/utils/colors.dart';
import 'package:expense_tracker/utils/constants.dart';
import 'package:expense_tracker/widgets/myTextButton.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MyNavBar extends StatefulWidget {
  const MyNavBar({super.key});

  @override
  State<MyNavBar> createState() => MyNavBarState();
}

class MyNavBarState extends State<MyNavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) => mobileNavbar(),
      desktop: (context) => desktopNavbar(),
    );
  }

  Widget mobileNavbar() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(Icons.menu),
          ),
          navLogo(),
        ],
      ),
    );
  }

  Widget desktopNavbar() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          navLogo(),
          Row(
            children: [
              myTextButton(s: 'Features'),
              myTextButton(s: 'About us'),
              myTextButton(s: 'Pricing'),
              myTextButton(s: 'Feedback'),
            ],
          ),
          SizedBox(
            height: 48,
            width: 160,
            child: TextButton(
              onPressed: () {},
              style: ButtonStyle(
                shape: WidgetStatePropertyAll(
                  ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(color: AppColors.primary),
                  ),
                ),
              ),
              child: Text(
                "Request a Demo",
                style: TextStyle(color: AppColors.primary),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget navButton(String s) => TextButton(
    onPressed: () {},
    child: Text(s, style: TextStyle(color: Colors.black, fontSize: 18)),
  );

  Widget navLogo() => Container(
    width: 110,
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage(fullLogo)),
    ),
  );
}
