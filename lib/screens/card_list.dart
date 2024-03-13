import 'package:flutter/material.dart';
import 'package:smart_card/components/large_title_bar.dart';

class CardListScreen extends StatelessWidget {
  const CardListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: CustomScrollView(
        slivers: <Widget>[
          const CustomLargeNavBar(title: '所有卡片'),
          // Use a SliverFillRemaining to make the content center even if the container is not tall enough
          SliverFillRemaining(
            hasScrollBody: false, // Prevents the sliver from becoming scrollable if it doesn't fill the viewport
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Center vertically
              children: [
                Center( // Center horizontally
                  child: Text(
                    '目前沒有任何卡片',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
