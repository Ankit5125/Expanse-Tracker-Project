import 'package:expense_tracker/utils/colors.dart';
import 'package:expense_tracker/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container9 extends StatefulWidget {
  const Container9({super.key});

  @override
  State<Container9> createState() => _Container9State();
}

class _Container9State extends State<Container9> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (p0) => mobileContainer(),
      desktop: (p0) => desktopContainer(),
    );
  }

  Widget mobileContainer() => Container(
    height: 1000,
    color: AppColors.primary,
    padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
    child: Column(
      children: [
        Column(
          children: [
            Image.asset(illustration6),
            SizedBox(height: 10),
            Text(
              "20M+ downloaded from 32 diffrent countires",
              textAlign: TextAlign.center,
              style: TextStyle(
                height: 1.1,
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Try demo for 7 days with full features.",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
              width: 180,
              height: 60,
              child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.white),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Try free demo",
                      style: TextStyle(color: AppColors.primary),
                    ),
                    Icon(Icons.keyboard_arrow_down, color: AppColors.primary),
                  ],
                ),
              ),
            ),
            SizedBox(height: 50),
            Image.asset(illustration5),
          ],
        ),
      ],
    ),
  );

  Widget desktopContainer() => Container(
    height: 750,
    color: AppColors.primary,
    child: Stack(
      children: [
        Positioned(top: 0, right: 0, child: Image.asset(v12)),
        Positioned(bottom: 0, left: 0, child: Image.asset(v)),
        Positioned(
          top: 120,
          left: 260,
          right: 260,
          child: Column(
            children: [
              Text(
                "20M+ downloaded from 32 \ndiffrent countires",

                textAlign: TextAlign.center,
                style: TextStyle(
                  height: 1.1,
                  color: Colors.white,
                  fontSize: w! / 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 24),
              Text(
                "Try demo for 7 days with full features.",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 60),
              SizedBox(
                width: 180,
                height: 60,
                child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.white),
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Try free demo",
                        style: TextStyle(color: AppColors.primary),
                      ),
                      Icon(Icons.keyboard_arrow_down, color: AppColors.primary),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 317,
          left: 61,
          right: 61,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Image.asset(illustration6), Image.asset(illustration5)],
          ),
        ),
      ],
    ),
  );
}
