import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:language_learning/screens/Family%20Members.dart';
import 'package:language_learning/screens/Numbers%20Page.dart';

import '../components/CategoryItem.dart';
import 'Color Page.dart';
import 'Phrases Page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF4010a4),
        title: Text(
          'Toku',
          style: TextStyle(
            fontSize: 22,
            fontFamily: 'fredoka',
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(height: 30),
            Category(
              text: 'Numbers',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return NumbersPage();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: 10),
            Category(text: 'Family Members',
              onTap:() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return FamilyMembers();
                    },
                  ),
                );
              }, ),
            SizedBox(height: 10),
            Category(text: 'Colors',onTap:() {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return ColorPage();
                  },
                ),
              );
            },),
            SizedBox(height: 10),
            Category(text: 'Phrases',onTap:() {
      Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context,animation,secondaryAnimation)=>PhrasesPage(),
       transitionsBuilder: (context,animation,secondaryAnimation,child){
          return FadeTransition(opacity: animation,child: child,);
       }

      ),
      );
      }),
          ],
        ),
      ),
    );
  }
}
