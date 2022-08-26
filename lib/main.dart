import 'package:flutter/material.dart';
import 'package:untitled/pages/home_page.dart';
import 'package:untitled/pages/login_page.dart';
import 'package:untitled/pages/splash_page.dart';
import 'package:untitled/themes/themes.dart';
import 'package:untitled/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: MyThems.lightTheme(),
      darkTheme: MyThems.darkTheme(),
      initialRoute: MyRoutes.splashRoute,
      routes: {
        "/": (context) => const LoginPage(),
        MyRoutes.splashRoute: (context) => const SplashPage(),
        MyRoutes.loginRoute: (context) => const LoginPage(),
        MyRoutes.homeRoute: (context) => const HomePage(),
      },
    );
  }
}
