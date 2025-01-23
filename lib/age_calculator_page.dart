import 'package:flutter/material.dart';

import 'date_box_widget.dart';
import 'date_details_widget.dart';
import 'next_birthday_widget.dart';

class AgeCalculatorPage extends StatefulWidget {
  const AgeCalculatorPage({super.key});


  @override
  State<AgeCalculatorPage> createState() => _AgeCalculatorPageState();
}

class _AgeCalculatorPageState extends State<AgeCalculatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          Container(
            height: 180,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20))),
            margin: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Text("Birthdata",style:
                  TextStyle(fontSize: 25,fontWeight: FontWeight.w500,color: Colors.white),),
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(5.0)),
                  child: TextField(
                    decoration: InputDecoration(suffixIcon:Icon(Icons.calendar_month),
                    hintText: "Enter your Birth Date"),
                  ),
                )
              ],
            ),
          ),
          Card(
            elevation: 5.0,
            shadowColor: Colors.grey,
            margin: EdgeInsets.only(left: 16.0,right: 16.0,bottom: 16.0,top: 0.0),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0),
            )),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("You are (Your age right now)",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16.0),),
              ),
              SizedBox(height: 10.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                DateBoxWidget(colorBox: Colors.deepPurpleAccent,label: "19",calendarlabel:"Years"),
                  DateBoxWidget(colorBox:Colors.lime,label: "5",calendarlabel:"Months"),
                  DateBoxWidget(colorBox:Colors.teal,label: "24",calendarlabel:"Days"),
              ],),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 16.0),
               child: Divider(thickness: 1.0,
               height: 40.0,),
             ),
              // DATE DETAILS ROWS
              DateDetailsRowWidget(oldlabel: "Months old",number: "233",),
              SizedBox(height: 15.0,),
              DateDetailsRowWidget(oldlabel: "Weeks old",number: "1023",),
              SizedBox(height: 15.0,),
              DateDetailsRowWidget(oldlabel: "Days old",number: "7039",),
              SizedBox(height: 15.0,),
              DateDetailsRowWidget(oldlabel: "Hours old(approx)",number: "16855",),
              SizedBox(height: 15.0,),
              DateDetailsRowWidget(oldlabel: "Minutes old(approx)",number: "843902",),
              SizedBox(height: 15.0,),
              DateDetailsRowWidget(oldlabel: "Seconds old(approx)",number: "5738829",),
            ],
          ),),
          // SECOND COTAINER
          Expanded(
            child: Container(
              margin: EdgeInsets.all(16.0),
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.greenAccent,borderRadius: BorderRadius.circular(10.0)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Next Birthday",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.w700),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      NextBirthdayWidget(date: "6",),
                      SizedBox(width: 15.0,),
                      NextBirthdayWidget(date: "18",),
                      Spacer(),
                      Column(
                        children: [
                          Text("Your birthday is on ",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w600)),
                            Text("Thursday this year",style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.w600),)
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 5.0,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    children: [
                      Text("Months",style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),),
                      SizedBox(width: 15.0,),
                      Text("Days",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.grey),),
                    ],
                  ),
                ),

              ],
            ),),
          )
        ],
      )),
    );
  }
}






