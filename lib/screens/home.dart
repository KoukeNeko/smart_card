import 'package:flutter/material.dart';
import 'package:smart_card/components/large_title_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: CustomScrollView(
          slivers: <Widget>[
            const CustomLargeNavBar(title: '我的卡片盒'),
            // Just some content big enough to have something to scroll.
            SliverToBoxAdapter(
              child: Card(
                child: SizedBox(
                  height: 1200,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 100, 8, 100),
                    child: Text(
                      'Here be scrolling content...',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
  }
}