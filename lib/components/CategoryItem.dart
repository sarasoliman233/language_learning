import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({this.text,this.onTap});
  String? text;
  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(left: 16),
        alignment: Alignment.centerLeft,
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Color(0xFFd9d9d8),
            borderRadius: BorderRadius.circular(19)
        ),
        child: Text(
          text!
          ,style: TextStyle(
            fontSize: 20,
            fontFamily: 'fredoka',
            fontWeight: FontWeight.w700,
            color: Colors.black
        ),
        ),
      ),
    );
  }
}