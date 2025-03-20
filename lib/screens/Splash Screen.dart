import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Home Screen.dart';




class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {

  late AnimationController _controller;
  late Animation<double> _animation;

  void initState(){
    super.initState();

    _controller =AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..forward();

    _animation=CurvedAnimation(parent: _controller, curve: Curves.easeIn);
    Future.delayed(const Duration(seconds: 3), (){
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => HomeScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            var begin = const Offset(1.0, 0.0); // يبدأ من خارج الشاشة على اليمين
            var end = Offset.zero;
            var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: Curves.easeInOut));

            return SlideTransition(
              position: animation.drive(tween),
              child: child,
            );
          },
        ),
      );

    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color(0xFF4010a4),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

               children: [
                 Image.asset('assets/images/logo.png'),
                 SizedBox(height: 15,),
                 Text(
                   'Language App',
                 style: TextStyle(
                     fontFamily: 'fredoka',
                     fontWeight: FontWeight.bold,
                   fontSize: 36,
                   color: Colors.white
                 ),
                 )

               ],
                  ),
            ),
              ),
            );
  }


  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
