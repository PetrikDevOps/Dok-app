import 'package:flutter/cupertino.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          CupertinoSliverNavigationBar(
            largeTitle: Text('Home'),
          ),
        ],
        body: Column(
          children: [],
        ),
      )
    );
  }
}