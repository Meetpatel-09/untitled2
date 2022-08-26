import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled/utils/routes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
    Timer(
        const Duration(seconds: 2),
        () => Navigator.pushNamedAndRemoveUntil(
          context,
          MyRoutes.homeRoute,
          (route) => false,
        ),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return const Material(
        child: Center(
          child: CircleAvatar(
            radius: 100.0,
            backgroundImage: AssetImage("assets/images/p1.jpg"),
          ),
        ),
    );
  }
}
