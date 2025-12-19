import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Padding(
        padding: const EdgeInsets.all(20),
      child: ListView(
        children: [
          MyBox(),
          SizedBox(height: 24,),
          MyBox(),
          SizedBox(height: 24,),
          MyBox(),
          SizedBox(height: 24,),
      ],
      )
      )
    );
  }

  Widget MyBox() {
    return Container(
      padding: EdgeInsets.all(20),
      height: 150,
      decoration: BoxDecoration(
        color: Colors.blue[200],
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: NetworkImage("https://cdn.pixabay.com/photo/2023/11/18/18/20/christmas-8396941_1280.png"),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken)
          )
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text("What is a computer", 
        style: TextStyle(
          fontSize: 25,
          color: Colors.white,
          fontWeight: FontWeight.bold
          ),),
        Text("Computer is a things to calculate and for any other works", 
        style: TextStyle(fontSize: 15,
        color: Colors.white
        ),)
      ],),
    );
  }
}