import 'package:expense_tracker/utils/colors.dart';
import 'package:flutter/material.dart';

class ProductCardDesktop extends StatefulWidget {
  final String iconBackground;
  final String image;
  final String name;
  final String description;
  const ProductCardDesktop({
    super.key,
    required this.iconBackground,
    required this.image,
    required this.name,
    required this.description,
  });

  @override
  State<ProductCardDesktop> createState() => _ProductCardDesktopState();
}

class _ProductCardDesktopState extends State<ProductCardDesktop> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          isHovering = true;
        });
      },
      onExit: (event) {
        setState(() {
          isHovering = false;
        });
      },
      child: AnimatedScale(
        duration: Duration(milliseconds: 150),
        scale: isHovering ? 1.2 : 1,
        child: Container(
          height: 260,
          width: 260,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black, width: 0.090),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(widget.iconBackground),
                  ),
                ),
                child: Image.asset(widget.image),
              ),
              Text(
                widget.name,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 10),
              Text(
                widget.description,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 10, color: Colors.grey.shade400),
              ),
              isHovering
                  ? IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_right_alt, color: AppColors.primary),
                  )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
