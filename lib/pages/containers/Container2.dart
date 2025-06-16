import 'package:expense_tracker/utils/colors.dart';
import 'package:expense_tracker/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container2 extends StatefulWidget {
  const Container2({super.key});

  @override
  State<Container2> createState() => _Container2State();
}

class _Container2State extends State<Container2> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (p0) => mobileContainer(),
      desktop: (p0) => desktopContainer(),
    );
  }

  Widget mobileContainer() => Column(
    children: [
      Stack(
        children: [
          Container(height: 220, color: AppColors.primary),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 180,
              margin: EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(containerImage)),
              ),
            ),
          ),
        ],
      ),
      Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: Column(
          children: [
            companyLogo(facebook),
            SizedBox(height: 20),
            companyLogo(google),
            SizedBox(height: 20),
            companyLogo(cocacola),
            SizedBox(height: 20),
            companyLogo(linkedin),
            SizedBox(height: 20),
            companyLogo(samsung),
          ],
        ),
      ),
    ],
  );

  Widget desktopContainer() => Container(
    height: 900,
    width: double.infinity,
    decoration: BoxDecoration(color: AppColors.primary),
    child: Column(
      children: [
        Expanded(
          child: Stack(
            children: [
              Positioned(
                right: -20,
                top: -20,
                child: Container(
                  height: 320,
                  width: 320,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(v12),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: -20,
                bottom: -20,
                child: Container(
                  height: 320,
                  width: 320,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(v2),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 35,
                right: 35,
                bottom: 0,
                child: Container(
                  width: double.infinity,
                  height: 625,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(containerImage)),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              companyLogo(facebook),
              companyLogo(google),
              companyLogo(cocacola),
              companyLogo(linkedin),
              companyLogo(samsung),
            ],
          ),
        ),
      ],
    ),
  );

  Widget companyLogo(String s) => Container(
    width: 160,
    height: 36,
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage(s), fit: BoxFit.contain),
    ),
  );
}
