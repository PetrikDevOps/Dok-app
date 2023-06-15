import 'package:flutter/cupertino.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          const CupertinoSliverNavigationBar(
            largeTitle: Text('Gaming'),
            previousPageTitle: 'News',
          ),
        ],
        body: const Text('This is gaming'),
      ),
    );
  }
}
