import 'package:flutter/material.dart';
import 'package:weatherapp/view/selectcity.dart';
import 'package:weatherapp/view/settingspage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey, 
        title:
    const Row(mainAxisAlignment: MainAxisAlignment.center,
      
      children: [
      Icon(Icons.location_on,
      // color: Colors.white
      ),
      Text("Malappuram",style: TextStyle(fontWeight: FontWeight.bold),),
    ],),
    // centerTitle: true,
    leading: IconButton(onPressed: (){
      Navigator.push(context,
       MaterialPageRoute(builder: (context)=>CityManagement()));}, 
    icon: const Icon(Icons.location_city,color: Colors.black,)),
    actions: [IconButton(onPressed: (){
      var a=showSnackbar(context);
      ScaffoldMessenger.of(context).showSnackBar(a);
    },
     icon: const Icon(Icons.more_horiz,color: Colors.black))],
    ),
    );
  }
  showSnackbar(context){
    return SnackBar(content: Column(
      children: [
        GestureDetector(
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingsPage()));},
          child: Text("Settings")),

          SizedBox(height: 20,),

        GestureDetector(
          onTap: (){},
          child: Text("Share"))

      ],
    ));
  }
}