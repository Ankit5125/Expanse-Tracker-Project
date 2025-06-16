import 'package:expense_tracker/utils/colors.dart';
import 'package:expense_tracker/utils/constants.dart';
import 'package:expense_tracker/widgets/myTextButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Bottomcontainer extends StatefulWidget {
  const Bottomcontainer({super.key});

  @override
  State<Bottomcontainer> createState() => _BottomcontainerState();
}

class _BottomcontainerState extends State<Bottomcontainer> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (p0) => mobileBottomContainer(),
      desktop: (p0) => desktopBottomContainer(),
    );
  }

  Widget mobileBottomContainer() => Container(
    color: Colors.white,
    padding: EdgeInsets.symmetric(vertical: 50, horizontal: 30),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(fullLogo, width: 112),
            SizedBox(height: 50),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "LINKS",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        myTextButton(s: "Home"),
                        myTextButton(s: "About Us"),
                        myTextButton(s: "Careers"),
                        myTextButton(s: "Pricing"),
                        myTextButton(s: "Features"),
                        myTextButton(s: "Blog"),
                      ],
                    ),
                  ],
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "LEGAL",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        myTextButton(s: "Terms of use"),
                        myTextButton(s: "Terms of conditions"),
                        myTextButton(s: "Privecy policy"),
                        myTextButton(s: "Cookie policy"),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 50),

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("NEWSLETTER", style: TextStyle(fontSize: 20)),
                SizedBox(height: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Over 25000 people have subscribed",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey.shade400,
                        height: 2,
                      ),
                    ),

                    SizedBox(
                      height: 62,
                      width: w! / 1.2,
                      child: TextField(
                        controller: emailController,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter your Email",
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              padding: EdgeInsets.all(10),
                              width: 102,
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: AppColors.primary,
                              ),
                              child: Center(
                                child: Text(
                                  "Subscribe",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    Text(
                      "We don’t sell your email and spam",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey.shade400,
                        height: 2,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 50),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                myTextButton(s: "Privacy & Terms"),
                myTextButton(s: "Contact Us"),
              ],
            ),
            SizedBox(height: 10),
            Text("Copyright @ 2022 xpence"),
            SizedBox(height: 10),
            SizedBox(
              width: 84,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(v_fb),
                  Image.asset(v_twitter),
                  Image.asset(v_linkedin),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );

  Widget desktopBottomContainer() => Container(
    height: 530,
    color: Colors.white,
    padding: EdgeInsets.symmetric(vertical: 50, horizontal: 150),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(fullLogo, width: 112),

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "LINKS",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    myTextButton(s: "Home"),
                    myTextButton(s: "About Us"),
                    myTextButton(s: "Careers"),
                    myTextButton(s: "Pricing"),
                    myTextButton(s: "Features"),
                    myTextButton(s: "Blog"),
                  ],
                ),
              ],
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "LEGAL",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    myTextButton(s: "Terms of use"),
                    myTextButton(s: "Terms of conditions"),
                    myTextButton(s: "Privecy policy"),
                    myTextButton(s: "Cookie policy"),
                  ],
                ),
              ],
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("NEWSLETTER", style: TextStyle(fontSize: 20)),
                SizedBox(height: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Over 25000 people have subscribed",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey.shade400,
                        height: 2,
                      ),
                    ),

                    SizedBox(
                      height: 62,
                      width: 350,
                      child: TextField(
                        controller: emailController,
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter your Email",
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              padding: EdgeInsets.all(10),
                              width: 102,
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: AppColors.primary,
                              ),
                              child: Center(
                                child: Text(
                                  "Subscribe",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    Text(
                      "We don’t sell your email and spam",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey.shade400,
                        height: 2,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                myTextButton(s: "Privacy & Terms"),
                myTextButton(s: "Contact Us"),
              ],
            ),
            Text("Copyright @ 2022 xpence"),
            SizedBox(
              width: 84,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(v_fb),
                  Image.asset(v_twitter),
                  Image.asset(v_linkedin),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
