import 'package:flutter/material.dart';
import 'package:language_learning/components/ListItem.dart';

import '../models/ItemModel.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<ItemModel> numbers= const[
    ItemModel(sound:'sounds/one.mp3',image: 'assets/images/1.png', jpName: 'eins', enName: 'one'),
    ItemModel(sound:'sounds/soundone.wav',image: 'assets/images/2.png', jpName: 'Zwei', enName: 'two'),
    ItemModel(sound:'sounds/soundone.wav',image: 'assets/images/3.png', jpName: 'drei', enName: 'three'),
    ItemModel(sound:'sounds/one.mp3',image: 'assets/images/4.png', jpName: 'Vier', enName: 'four'),
    ItemModel(sound:'sounds/soundone.wav',image: 'assets/images/5.png', jpName: 'fünf', enName: 'five'),
    ItemModel(sound:'sounds/soundone.wav',image: 'assets/images/6.png', jpName: 'Sechs', enName: 'six'),
    ItemModel(sound:'sounds/one.mp3',image: 'assets/images/7.png', jpName: 'Sieben', enName: 'seven'),
    ItemModel(sound:'sounds/soundone.wav',image: 'assets/images/8.png', jpName: 'acht', enName: 'eight'),
    ItemModel(sound:'sounds/soundone.wav',image: 'assets/images/9.png', jpName: 'neun', enName: 'nine'),
    ItemModel(sound:'sounds/soundone.wav',image: 'assets/images/10.png', jpName: 'Zehn', enName: 'ten'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF4010a4),
        title: Text(
          'Numbers',
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

