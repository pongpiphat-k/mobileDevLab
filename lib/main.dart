import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kong shop',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Calculate Change'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var price = TextEditingController();
  var amount = TextEditingController();
  var change = TextEditingController();

  double _total = 0;
  double _change = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Text("Calculate Change", style: TextStyle(fontFamily: 'maaja', fontSize: 48, fontWeight: FontWeight.bold, color: Colors.deepPurple, backgroundColor: Colors.blue),),
          SizedBox(height: 16),
          Image.asset("assets/2.png", height: 200,),
           priceTextField(),
          
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: amountTextField(),
          ),
          SizedBox(height: 16),
          calculateButton(),
          showTotalText(),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: receiveMoneyTextField(),
          ),
          SizedBox(height: 16),
          changeCalculateButton(),
          showChangeText(),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
  Widget priceTextField() {
    return Padding(
    padding: const EdgeInsets.all(16.0),
    child:  TextField(
      controller: price,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: "price per item",
      ),
    )
    );
   
  }

 Widget amountTextField() {
    return TextField(
      controller: amount,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: "amount of items",
      ),
    );
  }

   Widget calculateButton() {
    return Padding(
    padding: const EdgeInsets.all(16.0),
    child: ElevatedButton(
      onPressed: () {
        if (price.text.isNotEmpty && amount.text.isNotEmpty) {
          setState(() {
            _total = double.parse(price.text) * double.parse(amount.text);
          });
        }
      }, 
      child: Text("Calculate Total"),

    ) ,
    );
  }

   Widget showTotalText() {
    return Text("total: $_total Bath");
  }

   Widget receiveMoneyTextField() {
    return TextField(
      controller: change,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: "get money",
      ),
    );
  }

   Widget changeCalculateButton() {
    // return ElevatedButton(onPressed: () {}, child: Text("Calculate Change"));
    return Padding(
    padding: const EdgeInsets.all(16.0),
    child: ElevatedButton(
      onPressed: () {
        if (change.text.isNotEmpty) {
          setState(() {
            _change = double.parse(change.text) - (_total);
          });
        }
      }, 
      child: Text("Calculate Change"),

    ) ,
    );
  }

   Widget showChangeText() {
    return Text("Change: $_change Bath");
  }
}

  