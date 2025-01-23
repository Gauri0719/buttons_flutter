import 'package:flutter/material.dart';

class NextBirthdayWidget extends StatelessWidget {
  const NextBirthdayWidget({
    super.key,required this.date
  });
final String date;
  @override
  Widget build(BuildContext context) {
    return Container(
      height:50.0,
      width: 50.0,
      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10.0)),
      child: Center(child: Text(date,style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900),)),
    );
  }
}