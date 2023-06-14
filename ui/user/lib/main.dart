import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: LoginScreen(),
      theme: CupertinoThemeData(
        brightness: Brightness.dark,
      ),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isLoggedIn = false;

  void login() {
    // Simulating a successful login, you would typically have your own login logic
    setState(() {
      isLoggedIn = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isLoggedIn) {
      return const HomeScreen();
    } else {
      return CupertinoPageScaffold(
        // navigationBar: CupertinoNavigationBar(
        //   middle: const Text('Login'),
        // ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Login',
                style: TextStyle(fontSize: 24.0),
              ),
              const SizedBox(height: 24.0),
              ElevatedButton.icon(
                  onPressed: () {
                    login();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 41, 40, 40),
                    padding: const EdgeInsets.all(20.0),
                  ),
                  icon: Image.asset(
                    'assets/images/mc_icon.png',
                    width: 24,
                    height: 24,
                  ),
                  label: const Text('Login with microsoft', style: TextStyle(color: Colors.white),)),
            ],
          ),
        ),
      );
    }
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const [
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
            child: Text(
              'This is tab #$i',
              style:
                  CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle,
            ),
          ),
        );
      },
    );
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
