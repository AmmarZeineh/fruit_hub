import 'package:flutter/material.dart';
import 'package:fruits_hub/features/home/presentation/views/products_view.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/custom_bottom_navigation_bar.dart';
import 'package:fruits_hub/features/home/presentation/views/home_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});
  static const String routeName = 'home_view';

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(
        onItemTapped: (value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
      body: SafeArea(
        child: IndexedStack(
          index: currentIndex,
          children: const [
            HomeView(),
            ProductsView(),
          ],
        ),
      ),
    );
  }
}
