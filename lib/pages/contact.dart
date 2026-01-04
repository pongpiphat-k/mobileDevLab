import 'package:flutter/material.dart';
import 'package:firstapp/details.dart';
class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  // @override
  // Widget build(BuildContext context) {
  //   List mydata = ['apple', 'banana', 'papaya'];
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text("Title"),
  //     ),
  //     body: ListView(
  //       children: [
  //         ListTile(
  //           onTap: () {},
  //           leading: FlutterLogo(),
  //           title: Text(mydata[0]),
  //         ),
  //         ListTile(
  //           onTap: () {},
  //           leading: FlutterLogo(),
  //           title: Text(mydata[1]),
  //         ),
  //         ListTile(
  //           onTap: () {},
  //           leading: FlutterLogo(),
  //           title: Text(mydata[2]),
  //         ),
  //       ],
  //     ),
  //   );
  // }
  final item = List<String>.generate(1000, (i) => "Item $i");
      List mydata = ['apple', 'banana', 'papaya'];

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Title"),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: FlutterLogo(),
           title: Text(mydata[index]),
           onTap: () {
           },
        );
      },
      itemCount: mydata.length,
      ),
    );
  }
}