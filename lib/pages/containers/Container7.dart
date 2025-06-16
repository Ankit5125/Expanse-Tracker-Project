import 'package:expense_tracker/utils/constants.dart';
import 'package:expense_tracker/widgets/PriceWidget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container7 extends StatefulWidget {
  const Container7({super.key});

  @override
  State<Container7> createState() => _Container7State();
}

class _Container7State extends State<Container7> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (p0) => mobileContainer(),
      desktop: (p0) => desktopContainer(),
    );
  }

  Widget mobileContainer() => Container(
    height: 800,
    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Choose your flexible plan.",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 55, fontWeight: FontWeight.bold),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              PriceWidget(
                isDesktop: false,
                icon: bag1,
                plan: 'Starter Plan',
                price: '9.99',
              ),
              SizedBox(width: 20),
              PriceWidget(
                isDesktop: false,
                icon: bag2,
                plan: 'Sliver Plan',
                price: '19.99',
              ),
              SizedBox(width: 20),
              PriceWidget(
                isDesktop: false,
                icon: bag3,
                plan: 'Diamond Plan',
                price: '29.99',
              ),
            ],
          ),
        ),
      ],
    ),
  );

  Widget desktopContainer() => Container(
    height: 800,
    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Choose your flexible plan.",
          style: TextStyle(fontSize: w! / 20, fontWeight: FontWeight.bold),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            PriceWidget(
              isDesktop: true,
              icon: bag1,
              plan: 'Starter Plan',
              price: '9.99',
            ),
            PriceWidget(
              isDesktop: true,
              icon: bag2,
              plan: 'Sliver Plan',
              price: '19.99',
            ),
            PriceWidget(
              isDesktop: true,
              icon: bag3,
              plan: 'Diamond Plan',
              price: '29.99',
            ),
          ],
        ),
      ],
    ),
  );
}
