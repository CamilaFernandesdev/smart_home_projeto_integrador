import 'package:flutter/material.dart';
import 'theme/theme.dart';
import 'views/pages/about_page.dart';
import 'views/pages/home.dart';
import 'views/pages/profile_page.dart';
import 'views/pages/splash_page.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final bool _changeTheme = false;


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Smart home',
      // home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/home': (context) => MyHomePage(
          darkMode: _changeTheme,
        ),
        '/profile': (context) => const Profile(),
        '/about': (context) => AboutUs(),
        '/': (context) => const LoadingPage()
      },
      theme: _changeTheme ? CustomTheme.darkTheme : CustomTheme.lightTheme,
    );
  }
}