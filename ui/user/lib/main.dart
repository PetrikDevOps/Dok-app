import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:user/pages/home/home.dart';
import 'package:user/pages/news/news.dart';
import 'package:user/pages/profile/profile.dart';

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
        primaryColor: Colors.greenAccent,
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
                  label: const Text(
                    'Login with microsoft',
                    style: TextStyle(color: Colors.white),
                  )),
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
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.news_solid),
            label: 'News'
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            label: 'Profile',
          ),
        ],
      ),
      tabBuilder: (context, i) {
        // TODO: Create a function for returning correct page according to the value of `i`
        switch (i) {
          case 0:
            return CupertinoTabView(
              builder: (context) => const Home(),
            );
          case 1:
            return CupertinoTabView(
              builder: (context) => const News(),
            );
          case 2:
          default:
            return CupertinoTabView(
              builder: (context) => const Profile(),
            );
        }
      },
    );
  }
}