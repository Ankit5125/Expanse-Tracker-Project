import 'package:flutter/material.dart';

class ProductCardMobile extends StatefulWidget {
  final String iconBackground;
  final String image;
  final String name;
  final String description;
  const ProductCardMobile({
    super.key,
    required this.iconBackground,
    required this.image,
    required this.name,
    required this.description,
  });

  @override
  State<ProductCardMobile> createState() => _ProductCardMobileState();
}

class _ProductCardMobileState extends State<ProductCardMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black, width: 0.090),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 55,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: AssetImage(widget.iconBackground)),
            ),
            child: Center(child: Image.asset(widget.image)),
          ),
          SizedBox(height: 20),
          Text(
            widget.name,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 10),
          Text(
            widget.description,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15, color: Colors.grey.shade400),
          ),
        ],
      ),
    );
  }
}
