import 'package:expense_tracker/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container1 extends StatefulWidget {
  const Container1({super.key});

  @override
  State<Container1> createState() => _Container1State();
}

class _Container1State extends State<Container1> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (p0) => mobileContainer(),
      desktop: (p0) => desktopContainer(),
    );
  }

  Widget mobileContainer() => Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        height: h! / 1.2,
        width: w! / 1.2,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(illustration1),
            fit: BoxFit.contain,
          ),
        ),
      ),
      SizedBox(height: 20),
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Track your \nExpenses to \nSave Money",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 55,
              fontWeight: FontWeight.bold,
              height: 1.1,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Helps you to organize your income and expenses",
            style: TextStyle(color: Colors.grey.shade400),
          ),
          SizedBox(height: 20),
          Column(
            children: [
              SizedBox(
                height: 48,
                width: 160,
                child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.deepOrange),
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Try free demo",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(width: 10),
                      Icon(Icons.arrow_drop_down_sharp, color: Colors.white),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "— Web, iOs and Android",
                style: TextStyle(color: Colors.grey.shade400),
              ),
            ],
          ),
        ],
      ),
    ],
  );

  Widget desktopContainer() => Container(
    margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 10),
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Track your \nExpenses to \nSave Money",
                style: TextStyle(
                  fontSize: w! / 20,
                  fontWeight: FontWeight.bold,
                  height: 1.1,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Helps you to organize your income and expenses",
                style: TextStyle(color: Colors.grey.shade400),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(
                    height: 48,
                    width: 160,
                    child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          Colors.deepOrange,
                        ),
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Try free demo",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.arrow_drop_down_sharp,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Text(
                      "— Web, iOs and Android",
                      style: TextStyle(color: Colors.grey.shade400),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            height: 530,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(illustration1),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
