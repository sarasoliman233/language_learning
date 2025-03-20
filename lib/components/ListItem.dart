import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:language_learning/models/ItemModel.dart';

class Numberitem extends StatelessWidget {
  const Numberitem({Key? key, required this.Item}) : super(key: key);

  final ItemModel Item;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Color(0xFFd9d9d8),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
            Item.image==null ? SizedBox()
                : Image.asset(Item.image!, height: 50,),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  Item.jpName,
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'fredoka',
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                Text(
                  Item.enName,
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'fredoka',
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Spacer(flex: 1),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child:
            IconButton(
                onPressed: () {
                 Item.playSound();
                },
              icon:Icon(Icons.arrow_right, size: 30)),
          ),
        ],
      ),
    );
  }
}
