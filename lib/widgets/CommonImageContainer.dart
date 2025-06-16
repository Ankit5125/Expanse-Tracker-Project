import 'package:expense_tracker/utils/colors.dart';
import 'package:expense_tracker/utils/constants.dart';
import 'package:flutter/material.dart';

Widget commonContainerDesktop(String s1, s2, s3, image, bool isImageLeft) =>
    Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 30),
      child: Row(
        children: [
          isImageLeft
              ? Expanded(
                child: Container(
                  height: 530,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              )
              : Container(),

          Expanded(
            child: Column(
              crossAxisAlignment:
                  isImageLeft
                      ? CrossAxisAlignment.end
                      : CrossAxisAlignment.start,
              children: [
                Text(
                  s1.toUpperCase(),
                  style: TextStyle(color: Colors.grey.shade400, fontSize: 16),
                ),
                SizedBox(height: 10),
                Text(
                  s2,
                  textAlign: isImageLeft ? TextAlign.right : TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: w! / 20,
                    fontWeight: FontWeight.bold,
                    height: 1.1,
                  ),
                ),
                Text(
                  s3,
                  textAlign: isImageLeft ? TextAlign.right : TextAlign.left,
                  style: TextStyle(color: Colors.grey.shade400, fontSize: 16),
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: 125,
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text(
                          'Learn More',
                          style: TextStyle(color: AppColors.primary),
                        ),
                        SizedBox(width: 10),
                        Icon(Icons.arrow_right_alt, color: AppColors.primary),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          !isImageLeft
              ? Expanded(
                child: Container(
                  height: 530,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              )
              : Container(),
        ],
      ),
    );

Widget commonContainerMobile(String s1, s2, s3, image) => Container(
  padding: EdgeInsets.symmetric(horizontal: 25),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image)),
        ),
      ),
      SizedBox(height: 10),
      Text(
        s1.toUpperCase(),
        style: TextStyle(color: Colors.grey.shade400, fontSize: 13),
      ),
      SizedBox(height: 10),
      Text(
        s2,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black,
          fontSize: 55,
          fontWeight: FontWeight.bold,
          height: 1.1,
        ),
      ),
      SizedBox(height: 10),
      Text(
        s3,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.grey.shade400, fontSize: 13),
      ),
      SizedBox(height: 10),
      SizedBox(
        width: 125,
        child: TextButton(
          onPressed: () {},
          child: Row(
            children: [
              Text('Learn More', style: TextStyle(color: AppColors.primary)),
              SizedBox(width: 10),
              Icon(Icons.arrow_right_alt, color: AppColors.primary),
            ],
          ),
        ),
      ),
    ],
  ),
);
