import 'package:flutter/cupertino.dart';

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
      body: Text('News'),
    ));
  }
}
