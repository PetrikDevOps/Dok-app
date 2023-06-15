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
            trailing: CupertinoButton(
              child: Icon(CupertinoIcons.search),
              onPressed: () {},
            ),
            largeTitle: Text('News'),
          ),
        ],
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              NewsCard(
                title: "Gaming",
                description: "We do a little gaming!",
                imageUrl:
                    'https://images.pexels.com/photos/3171837/pexels-photo-3171837.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
              ),
              NewsCard(
                title: "Juice WRLD event in fortnite",
                description: "Epic games is wild",
                imageUrl:
                    'https://m.media-amazon.com/images/M/MV5BNzU2YTY2OTgtZGZjZi00MTAyLThlYjUtMWM5ZmYzOGEyOWJhXkEyXkFqcGdeQXVyNTgyNTA4MjM@._V1_FMjpg_UX1000_.jpg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
