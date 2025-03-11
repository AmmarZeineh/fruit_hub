import 'package:flutter/material.dart';

class CartItemActionButton extends StatelessWidget {
  const CartItemActionButton({
    super.key,
    required this.color,
    required this.iconColor,
    required this.iconData,
  });
  final Color color, iconColor;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
      child: FittedBox(
        child: Padding(
          padding: const EdgeInsets.all(2),
          child: Icon(
            iconData,
            color: iconColor,
          ),
        ),
      ),
    );
  }
}
