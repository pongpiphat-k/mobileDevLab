import 'package:flutter/material.dart';
import 'package:firstapp/details.dart';

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
          MyBox("What is a computer?", "Computer is a things to calculate and for any other works", "https://cdn.pixabay.com/photo/2023/11/18/18/20/christmas-8396941_1280.png"),
          SizedBox(height: 24,),
          MyBox("What is a Flutter?", "Flutter is a tool to create mobile applications", "https://miro.medium.com/v2/resize:fit:1400/format:webp/0*tHNo-dGBgh8vPwy7.png"),
          SizedBox(height: 24,),
          MyBox("What is a Dart?", "Dart is a programming language used in Flutter", "https://miro.medium.com/v2/resize:fit:1400/format:webp/1*UofordZ0uWE2Tkh04PsFRw.png"),
          SizedBox(height: 24,),
      ],
      )
      )
    );
  }

  Widget MyBox(String title, String subtitle, String img_url) {
    return Container(
      padding: EdgeInsets.all(20),
      height: 150,
      decoration: BoxDecoration(
        color: Colors.blue[200],
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: NetworkImage(img_url),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken)
          )
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text(title, 
        style: TextStyle(
          fontSize: 25,
          color: Colors.white,
          fontWeight: FontWeight.bold
          ),),
        Text(subtitle, 
        style: TextStyle(fontSize: 15,
        color: Colors.white
        ),),
        SizedBox(height: 8),
        TextButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailsPage()));
        },
        style: TextButton.styleFrom(
          foregroundColor: Colors.blue,
          ), child: Text("read more"),
        )
        
      ],),
      
    );
  }
}