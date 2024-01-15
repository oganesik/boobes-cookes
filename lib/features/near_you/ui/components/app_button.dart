import 'package:boobescookes/core/themes/theme.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final double? iconSize;
  final double buttonSize;
  final Color iconColor;
  final Color? backgroundColor;
  final IconData icon;
  final Offset offset;
  final double? spreadRadius;
  final BoxShape? shape;
  final double? borderRadius;

  const AppButton(
      {super.key,
      this.iconSize,
      required this.buttonSize,
      required this.iconColor,
      this.backgroundColor,
      required this.icon,
      required this.offset,
      this.spreadRadius,
      this.shape,
      this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: buttonSize,
        width: buttonSize,
        decoration: BoxDecoration(
          color: backgroundColor ?? Colors.white,
          boxShadow: [
            BoxShadow(
              color: AppColors.lightDark,
              spreadRadius: spreadRadius ?? 0,
              offset: offset,
            )
          ],
          shape: shape ?? BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 12)),
          border: Border.all(
            color: AppColors.lightDark,
            width: 1,
          ),
        ),
        child: Icon(
          icon,
          color: iconColor,
          size: iconSize,
        ),
      ),
    );
  }
}
