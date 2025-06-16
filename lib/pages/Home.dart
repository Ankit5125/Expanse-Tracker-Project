import 'package:expense_tracker/pages/containers/BottomContainer.dart';
import 'package:expense_tracker/pages/containers/Container1.dart';
import 'package:expense_tracker/pages/containers/Container2.dart';
import 'package:expense_tracker/pages/containers/Container3.dart';
import 'package:expense_tracker/pages/containers/Container4.dart';
import 'package:expense_tracker/pages/containers/Container5.dart';
import 'package:expense_tracker/pages/containers/Container6.dart';
import 'package:expense_tracker/pages/containers/Container7.dart';
import 'package:expense_tracker/pages/containers/Container8.dart';
import 'package:expense_tracker/pages/containers/Container9.dart';
import 'package:expense_tracker/utils/colors.dart';
import 'package:expense_tracker/utils/constants.dart';
import 'package:expense_tracker/widgets/navbar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyNavBar(),
            Container1(),
            SizedBox(height: 50),
            Container2(),
            SizedBox(height: 50),
            Container3(),
            SizedBox(height: 50),
            Container4(),
            SizedBox(height: 50),
            Container5(),
            SizedBox(height: 50),
            Container6(),
            SizedBox(height: 50),
            Container7(),
            SizedBox(height: 50),
            Container8(),
            SizedBox(height: 50),
            Container9(),
            Bottomcontainer(),
          ],
        ),
      ),
      drawer: myDrawer(),
    );
  }

  Widget myDrawer() {
    return Drawer(
      backgroundColor: AppColors.primary,
      child: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            mobileNavbarButtons("Features"),
            mobileNavbarButtons("About US"),
            mobileNavbarButtons("Pricing"),
            mobileNavbarButtons("Feadback"),

            SizedBox(height: 50),

            Container(
              height: 40,
              width: double.infinity,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    Text(
                      "Request a demo",
                      style: TextStyle(color: AppColors.primary),
                    ),
                    Icon(Icons.arrow_right_alt, color: AppColors.primary),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget mobileNavbarButtons(String s) {
    return Container(
      height: 40,
      width: double.infinity,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: TextButton(
        onPressed: () {},
        style: ButtonStyle(
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          ),
        ),
        child: Text(s, style: TextStyle(color: AppColors.primary)),
      ),
    );
  }
}
