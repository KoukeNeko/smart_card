import 'package:flutter/material.dart';

class CustomNavigationBar extends StatefulWidget {
  final int currentIndex;
  final Function(int) onPageSelected;

  const CustomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onPageSelected,
  });

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      onDestinationSelected: widget.onPageSelected,
      selectedIndex: widget.currentIndex,
      destinations: const <Widget>[
        NavigationDestination(
          selectedIcon: Icon(Icons.home),
          icon: Icon(Icons.home_outlined),
          label: '卡片盒',
        ),
        NavigationDestination(
          selectedIcon: Icon(Icons.credit_card),
          icon: Icon(Icons.credit_card_outlined),
          label: '所有卡片',
        ),
      ],
    );
  }
}
