import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InActiveBottomNavigationBarItem extends StatelessWidget {
  const InActiveBottomNavigationBarItem({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      color: Colors.transparent,
      width: MediaQuery.sizeOf(context).width / 4.5,
      child: Padding(
        padding: const EdgeInsets.all(26),
        child: SvgPicture.asset(image),
      ),
    );
  }
}
