import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:todolist/taskmanager.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: AnimatedSplashScreen(
  duration: 5000,
  splash: Center(
    child: Column(
      
      children: <Widget>[
        
        Container(child: Icon(Icons.check),),
      SizedBox(height: 100,width: 30,
      ),
      Container(child: Text("splash screen"),)
      ],
    )
  ),
   nextScreen: TaskManager()),
    );
  }
}