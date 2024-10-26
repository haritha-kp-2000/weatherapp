import 'package:flutter/material.dart';

class Addcity extends StatelessWidget {
  const Addcity({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:Colors.blueGrey ,
      body: Padding(
        padding: const EdgeInsets.only(top: 40,left: 20),
        child: Column(children: [
          Row(children: [
            Container(
              height:MediaQuery.of(context).size.height*0.06,
              width:MediaQuery.of(context).size.width*0.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color.fromARGB(255, 156, 155, 155),
                // border: Border.all(color: Colors.black,width: 1)
              ),
              child:TextFormField(
                decoration: const InputDecoration(
                  hintText: "City name",
              prefixIcon: Icon(Icons.search),
              border: InputBorder.none
              ),),
              ),
              TextButton(onPressed: (){Navigator.pop(context);},
               child: Text("Cancel",style: TextStyle(color: const Color.fromARGB(255, 34, 55, 131),fontSize: 18),))
          ],)
        
        ],),
      ),
    );
  }
}