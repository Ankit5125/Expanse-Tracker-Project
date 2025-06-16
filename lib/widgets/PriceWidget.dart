import 'package:expense_tracker/utils/colors.dart';
import 'package:flutter/material.dart';

class PriceWidget extends StatefulWidget {
  final bool isDesktop;
  final String icon;
  final String plan;
  final String price;

  const PriceWidget({
    super.key,
    required this.isDesktop,
    required this.icon,
    required this.plan,
    required this.price,
  });

  @override
  State<PriceWidget> createState() => _PriceWidgetState();
}

class _PriceWidgetState extends State<PriceWidget> {
  @override
  Widget build(BuildContext context) {
    if (widget.isDesktop) {
      return desktopVersion();
    } else {
      return mobileVersion();
    }
  }

  Widget mobileVersion() => Container(
    height: 500,
    width: 300,
    padding: EdgeInsets.symmetric(vertical: 40, horizontal: 30),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      border: Border.all(
        color: isHover ? AppColors.primary : Colors.black,
        width: isHover ? 1 : 0.5,
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(widget.icon, height: 50),
        Text(
          widget.plan,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        Column(
          children: [
            ListTile(
              leading: Icon(Icons.done, color: Colors.grey.shade400),
              title: Text("Store unlimited data"),
            ),
            ListTile(
              leading: Icon(Icons.done, color: Colors.grey.shade400),
              title: Text("Export to pdf, xls, csv"),
            ),
            ListTile(
              leading: Icon(Icons.done, color: Colors.grey.shade400),
              title: Text("Cloud server support"),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "\$${widget.price}/",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                Text(
                  "year",
                  style: TextStyle(fontSize: 20, color: Colors.grey.shade400),
                ),
              ],
            ),
            Text(
              "up to 3 user + 1.99 per user",
              style: TextStyle(color: Colors.grey.shade400, fontSize: 15),
            ),
          ],
        ),
        SizedBox(
          height: 48,
          width: 160,
          child: TextButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(
                isHover ? AppColors.primary : Colors.white,
              ),
              shape: WidgetStatePropertyAll(
                ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: BorderSide(color: AppColors.primary),
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Get This",
                  style: TextStyle(
                    color: isHover ? Colors.white : AppColors.primary,
                  ),
                ),
                Icon(
                  Icons.arrow_right_alt,
                  color: isHover ? Colors.white : AppColors.primary,
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );

  bool isHover = false;

  Widget desktopVersion() => MouseRegion(
    onEnter:
        (event) => {
          setState(() {
            isHover = true;
          }),
        },
    onExit:
        (event) => setState(() {
          isHover = false;
        }),
    child: AnimatedScale(
      scale: isHover ? 1.1 : 1,
      duration: Duration(milliseconds: 150),
      child: Container(
        height: 500,
        width: 350,
        padding: EdgeInsets.symmetric(vertical: 40, horizontal: 40),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isHover ? AppColors.primary : Colors.black,
            width: isHover ? 1 : 0.5,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(widget.icon, height: 50),
            Text(
              widget.plan,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Column(
              children: [
                ListTile(
                  leading: Icon(Icons.done, color: Colors.grey.shade400),
                  title: Text("Store unlimited data"),
                ),
                ListTile(
                  leading: Icon(Icons.done, color: Colors.grey.shade400),
                  title: Text("Export to pdf, xls, csv"),
                ),
                ListTile(
                  leading: Icon(Icons.done, color: Colors.grey.shade400),
                  title: Text("Cloud server support"),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "\$${widget.price}/",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    Text(
                      "year",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ],
                ),
                Text(
                  "up to 3 user + 1.99 per user",
                  style: TextStyle(color: Colors.grey.shade400, fontSize: 15),
                ),
              ],
            ),
            SizedBox(
              height: 48,
              width: 160,
              child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    isHover ? AppColors.primary : Colors.white,
                  ),
                  shape: WidgetStatePropertyAll(
                    ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(color: AppColors.primary),
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Get This",
                      style: TextStyle(
                        color: isHover ? Colors.white : AppColors.primary,
                      ),
                    ),
                    Icon(
                      Icons.arrow_right_alt,
                      color: isHover ? Colors.white : AppColors.primary,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
