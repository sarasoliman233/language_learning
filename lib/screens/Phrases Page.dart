import 'package:flutter/material.dart';
import 'package:language_learning/components/ListItem.dart';

import '../models/ItemModel.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<ItemModel> numbers= const[
    ItemModel(sound:'sounds/one.mp3',jpName: 'Vater', enName: 'Father'),
    ItemModel(sound:'sounds/soundone.wav', jpName: 'Mutter', enName: 'Mother'),
    ItemModel(sound:'sounds/soundone.wav', jpName: 'Bruder', enName: 'Brother'),
    ItemModel(sound:'sounds/one.mp3', jpName: 'Schwester', enName: 'Sister'),
    ItemModel(sound:'sounds/soundone.wav', jpName: 'Großvater', enName: 'Grandfather'),
    ItemModel(sound:'sounds/soundone.wav', jpName: 'Großmutter', enName: 'Grandmother'),
    ItemModel(sound:'sounds/one.mp3', jpName: 'Onkel', enName: 'Uncle'),
    ItemModel(sound:'sounds/soundone.wav', jpName: 'Cousin', enName: 'Cousin'),
    ItemModel(sound:'sounds/soundone.wav', jpName: 'Cousine', enName: 'daughter'),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFd9d9d8),
        appBar: AppBar(
          backgroundColor: Color(0xFF4010a4),
          title: Text(
            'Family Members',
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

