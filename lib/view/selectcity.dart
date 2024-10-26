import 'package:flutter/material.dart';
import 'package:weatherapp/view/addcity.dart';

import 'package:weatherapp/view/homepage.dart';

bool toggles=false;

class CityManagement extends StatefulWidget {
  const CityManagement({super.key});

  @override
  State<CityManagement> createState() => _CityManagementState();
}

class _CityManagementState extends State<CityManagement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        // leading: ,
        title: const Text("City management",style: TextStyle(fontWeight: FontWeight.bold),),
        actions: [IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Addcity()));}, 
        icon: const Icon(Icons.add,color: Colors.black,))],
      ),
      body:  Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Auto-location",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                IconButton(onPressed:toggle, icon: Icon(toggles?Icons.toggle_off:Icons.toggle_on,size: 45,
                color:  Colors.black,))
              ],
            ),
            GestureDetector(onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));},
              child:  Container(
                // color: const Color.fromARGB(255, 148, 146, 146),
                height: 70,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
              color: const Color.fromARGB(255, 146, 191, 228)),
                child: const Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(width: 15,),
                    Text("Malappuram",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                    SizedBox(width: 20,),
                    Icon(Icons.location_on),
                    SizedBox(width: 120,),
                    Text("25 C",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                  ],
                ),
                
              ),
            )
          ],
        ),
      ),
    );
  }

  void toggle(){
    setState(() {
      toggles=!toggles;
    });
  }
}