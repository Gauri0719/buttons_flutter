import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  const Buttons({super.key});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // ELEVATED BUTTON
              ElevatedButton(onPressed: (){}, child: Text("Elevated Button",style:
              TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.deepOrangeAccent),)),
              SizedBox(height: 20.0,),
              // TEXTBUTTON
              TextButton(onPressed: (){},
                style:TextButton.styleFrom(
                    textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                    backgroundColor: Colors.lime,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),)), child: Text("Text Button"),),
              SizedBox(height: 20.0,),
              //   OUTLINED BUTTON
              OutlinedButton(onPressed: (){},
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.blue, width: 2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),),), child: Text("Outlined Button"),
              ),
              SizedBox(height: 20.0,),
              //   ICON BUTTON
              Container(
                  decoration:  BoxDecoration(
                    color: Colors.green, // Background color
                    borderRadius: BorderRadius.circular(8), // Rounded corners
                  ),
                  child: IconButton(onPressed: (){}, icon:
                  Icon(Icons.account_balance),style:
                  IconButton.styleFrom(iconSize: 40),)),
              SizedBox(height: 20.0,),
              //   CLOSED BUTTON
              Container(
                decoration:BoxDecoration(borderRadius:
                BorderRadius.circular(16.0),color: Colors.blue,shape: BoxShape.rectangle),
                child: CloseButton(onPressed: (){
                  Navigator.pop(context);
                },color: Colors.redAccent,),
              ),
              SizedBox(height: 20.0,),
              // BACK BUTTON
              Container(
                decoration:BoxDecoration(borderRadius:
                BorderRadius.circular(16.0),color:
                Colors.deepOrangeAccent,shape: BoxShape.rectangle),
                child: BackButton(onPressed: (){
                  Navigator.pop(context);},),
              ),
              SizedBox(height: 20.0,),
              FloatingActionButton(onPressed: (){},
                child: Icon(Icons.add),),
              SizedBox(height: 20.0,),
              //    MATERIAL BUTTON
              MaterialButton(
                  onPressed: () {},
                  color: Colors.amber, // Background color
                  textColor: Colors.pinkAccent, // Text color
                  child: Text('Material Button',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                  )
              ),


            ],
          ),
        ),
      )),
    );
  }
}
