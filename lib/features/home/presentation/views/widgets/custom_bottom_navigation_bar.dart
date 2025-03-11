import 'package:flutter/material.dart';
import 'package:fruits_hub/features/home/domain/entities/bottom_navigation_bar_entity.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/custom_bottom_navigation_bar_item.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key, required this.onItemTapped});
  final ValueChanged<int> onItemTapped;
  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: const ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        color: Colors.white,
        shadows: [
          BoxShadow(
            color: Color(0xff190000),
            blurRadius: 30,
            offset: Offset(0, -2),
            spreadRadius: -13,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: navigationBarItems.asMap().entries.map((e) {
          var index = e.key;
          var entity = e.value;
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
                widget.onItemTapped(index);
              });
            },
            child: CustomBottomNavigationBarItem(
              bottomNavigationBarEntity: entity,
              isActive: index == selectedIndex,
            ),
          );
        }).toList(),
      ),
    );
  }
}
