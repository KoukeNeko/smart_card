import 'package:flutter/material.dart';
import 'package:smart_card/components/card.dart';
import 'package:smart_card/components/large_title_bar.dart';

class CardListScreen extends StatelessWidget {
  const CardListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: CustomScrollView(
        slivers: <Widget>[
          CustomLargeNavBar(title: '所有卡片'),
          // Use a SliverFillRemaining to make the content center even if the container is not tall enough
          SliverFillRemaining(
            hasScrollBody: false, // Prevents the sliver from becoming scrollable if it doesn't fill the viewport
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                CustomCard(img_url: 'https://pics.paypal.com//00/s/OTY5WDE1MzZYUE5H/p/NDQ5YjYwZDMtMTQ2My00NTZlLWI5MjItOTc0NTE1YjhlMjkx/image__140.png'),
                CustomCard(img_url: 'https://pics.paypal.com//00/s/OTY5WDE1MzZYUE5H/p/NjZlNzgzMTMtN2Y0ZS00Yzg1LWFhZGYtZDYzYzQ0Nzc3OWI3/image__140.png',),
                CustomCard(img_url: 'https://pics.paypal.com//00/s/OTY5WDE1MzZYUE5H/p/NGE1Yzk4MWItNDkwMC00Y2FlLTg5MDktZDE2MDJkMjNmZWZj/image__140.png',),
                CustomCard(img_url: 'https://pics.paypal.com//00/s/OTY5WDE1MzZYUE5H/p/NGIxN2YyMDQtNmQzZi00ZGFjLWFkYTUtNzc1N2U2ZjMyODhh/image__140.png',),
                CustomCard(img_url: 'https://pics.paypal.com//00/s/OTY5WDE1MzZYUE5H/p/NjdkZDk0M2UtMDc2MC00ZDczLThlOWMtNmZlMzhiNzYxODRj/image__140.png',),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
