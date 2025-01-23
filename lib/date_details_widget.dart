import 'package:flutter/material.dart';

class DateDetailsRowWidget extends StatelessWidget {
  const DateDetailsRowWidget({
    super.key,required this.oldlabel,required this.number,
  });
  final String oldlabel;
  final String number;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(oldlabel,style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w500),),
          Text(number,style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}