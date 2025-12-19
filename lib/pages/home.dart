import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
          MyBox(),
          SizedBox(height: 24,),
          MyBox(),
          SizedBox(height: 24,),
          MyBox(),
          SizedBox(height: 24,),
      ],
    );
  }

  Widget MyBox() {
    return Container(
      child: Column(children: [
        Text("What is a computer", style: TextStyle(fontSize: 25),),
        Text("Computer is a things to calculate and for any other works", style: TextStyle(fontSize: 15),)
      ],),
    );
  }
}