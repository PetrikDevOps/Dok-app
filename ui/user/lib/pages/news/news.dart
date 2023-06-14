import 'package:flutter/cupertino.dart';
import 'package:user/pages/news/components/news_card.dart';

class News extends StatelessWidget {
  const News({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          CupertinoSliverNavigationBar(
            largeTitle: Text('News'),
          ),
        ],
        body: Column(
          children: [
            NewsCard(
                title: "Gaming",
                description: "We do a little gaming!",
                imageUrl:
                    'https://images.pexels.com/photos/3171837/pexels-photo-3171837.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1')
          ],
        ),
      ),
    );
  }
}
