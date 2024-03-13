import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('關於我'),
      ),
      body: const Center(
        child: Text('This is the about page.'),
      ),
    );
  }
}
