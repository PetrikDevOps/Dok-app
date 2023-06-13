import 'package:flutter/cupertino.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.news),
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.profile_circled),
            ),
          ],
        ),
        tabBuilder: (context, i) {
          return CupertinoPageScaffold(
            navigationBar: CupertinoNavigationBar(
              middle: Text(getTabName(i)),
            ),
            child: Center(
              child: Text('This is tab #$i'),
            ),
          );
        });
  }
}

String getTabName(int i) {
  if (i == 0) {
    return 'Home';
  } else if (i == 1) {
    return 'News';
  } else {
    return 'Profile';
  }
}
