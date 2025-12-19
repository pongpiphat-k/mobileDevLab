import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    List mydata = ['apple', 'banana', 'papaya'];
    return Scaffold(
      appBar: AppBar(
        title: Text("Title"),
      ),
      body: ListView(
        children: [
          ListTile(
            onTap: () {},
            leading: FlutterLogo(),
            title: Text(mydata[0]),
          ),
          ListTile(
            onTap: () {},
            leading: FlutterLogo(),
            title: Text(mydata[1]),
          ),
          ListTile(
            onTap: () {},
            leading: FlutterLogo(),
            title: Text(mydata[2]),
          ),
        ],
      ),
    );
  }
}