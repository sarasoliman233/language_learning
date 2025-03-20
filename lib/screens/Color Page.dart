
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:language_learning/components/ListItem.dart';

import '../models/ItemModel.dart';

class ColorPage extends StatelessWidget {
  const ColorPage({super.key});
  final List<ItemModel> numbers= const[
    ItemModel(sound:'sounds/one.mp3',image: 'assets/images/blue.png', jpName: 'Blau', enName: 'Blue'),
    ItemModel(sound:'sounds/soundone.wav',image: 'assets/images/green.png', jpName: 'Grün', enName: 'Green'),
    ItemModel(sound:'sounds/soundone.wav',image: 'assets/images/dark.png', jpName: 'Schwarz', enName: 'Black'),
    ItemModel(sound:'sounds/one.mp3',image: 'assets/images/white.png', jpName: 'Weiß', enName: 'White'),
    ItemModel(sound:'sounds/soundone.wav',image: 'assets/images/orange.png', jpName: 'Orange', enName: 'Orange'),
    ItemModel(sound:'sounds/soundone.wav',image: 'assets/images/red.png', jpName: 'Rot', enName: 'Red'),
    ItemModel(sound:'sounds/soundone.wav',image: 'assets/images/yellow.png', jpName: 'Gelb', enName: 'Yellow'),
    ItemModel(sound:'sounds/one.mp3',image: 'assets/images/pink.png', jpName: 'Rosa', enName: 'Pink'),
    ItemModel(sound:'sounds/soundone.wav',image: 'assets/images/purple.png', jpName: 'Lila', enName: 'Purple'),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFd9d9d8),
        appBar: AppBar(
          backgroundColor: Color(0xFF4010a4),
          title: Text(
            'Colors',
            style: TextStyle(
              fontSize: 22,
              fontFamily: 'fredoka',
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
        body: ListView.builder(
            itemCount: numbers.length,
            itemBuilder: (context,index){
              return Numberitem(Item: numbers[index]);
            }

        )
    );
  }
}

