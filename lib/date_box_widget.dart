import 'package:flutter/material.dart';

class DateBoxWidget extends StatelessWidget {
  const DateBoxWidget({
    super.key,required this.colorBox,required this.label,required this.calendarlabel
  });
final Color colorBox;
final String label;
final String calendarlabel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width*0.20,
          padding: EdgeInsets.all(20.0),
          decoration:BoxDecoration(color: colorBox,borderRadius: BorderRadius.circular(5.0)),
          child: Center(
            child: Text(label,style: TextStyle(fontSize: 30.0,
                fontWeight: FontWeight.w900,color: Colors.white),),
          ),
        ),
        SizedBox(height: 5.0,),
        Text(calendarlabel,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.grey),)
      ],
    );
  }
}