import 'package:flutter/material.dart';
import 'package:getx/utils/colors.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final Color color, textColor;
  final double? width, height, borderRadius;
  final bool? isBorderType;

  const CustomButton({
    super.key,
    required this.title,
    required this.onTap,
    this.color = Colors.blue,
    this.textColor = Colors.white,
    this.borderRadius = 8.0,
    required this.width,
    required this.height,
    this.isBorderType,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: InkWell(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.all(15),
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          decoration: BoxDecoration(
            color: isBorderType == true ? null : AppColor.primaryColor,
            borderRadius: BorderRadius.circular(10),
            border: isBorderType == true
                ? Border.all(color: AppColor.primaryColor, width: 2)
                : null,
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                  color: isBorderType == true
                      ? AppColor.primaryColor
                      : Colors.white,
                  fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
