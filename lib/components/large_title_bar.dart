import 'package:flutter/material.dart';
import 'package:smart_card/screens/about.dart';

class CustomLargeNavBar extends StatelessWidget {
  final String title;

  const CustomLargeNavBar({
    super.key, 
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar.large(
      title: Text(title),
      actions: <Widget>[
        PopupMenuButton<String>(
          onSelected: (value) {
            switch (value) {
              case 'about':
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutScreen()),
                );
                break;
            }
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            const PopupMenuItem<String>(
              value: 'about',
              child: Text('關於我'),
            ),
            // Add other menu items here
          ],
        ),
      ],
    );
  }
}
