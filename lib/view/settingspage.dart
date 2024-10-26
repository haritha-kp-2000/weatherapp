import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Settings",style: TextStyle(fontWeight: FontWeight.bold),),
        leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back)),
      ),
body: 
const Padding(
  padding: EdgeInsets.all(15),
  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Text("Home Screen Weather",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
      Icon(Icons.keyboard_arrow_right_sharp)
    ],),
    Divider(thickness: 1,color: Colors.grey,),

    Text("Temperature unit"),
    Text("Degrees Celsius C"),
    Text("Check for update"),
    Text("vvvvv"),
    
  ],),
),


    );
  }
}