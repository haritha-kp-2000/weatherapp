import 'package:flutter/material.dart';
import 'package:weatherapp/view/homepage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    gotoHome();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height*0.5,),
          const Center(child: Icon(Icons.cloudy_snowing,size: 60,),)
        ],
      ),
    );
  }
  Future<void>gotoHome()async{
    await Future.delayed(const Duration(seconds: 5));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const HomePage()));
  }
}