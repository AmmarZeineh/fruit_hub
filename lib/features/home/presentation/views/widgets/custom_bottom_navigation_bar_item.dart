import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruits_hub/features/home/domain/entities/bottom_navigation_bar_entity.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/active_navigation_bar_item.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/in_active_navigation_bar_item.dart';

class CustomBottomNavigationBarItem extends StatelessWidget {
  const CustomBottomNavigationBarItem(
      {super.key,
      required this.isActive,
      required this.bottomNavigationBarEntity});
  final bool isActive;
  final BottomNavigationBarEntity bottomNavigationBarEntity;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveBottomNavigationBarItem(
            name: bottomNavigationBarEntity.name,
            image: bottomNavigationBarEntity.activeImage,
          )
        : InActiveBottomNavigationBarItem(
            image: bottomNavigationBarEntity.inActiveImage,
          );
  }
}
