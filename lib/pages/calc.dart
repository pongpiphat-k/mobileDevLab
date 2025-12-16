import 'package:flutter/material.dart';

class CalculatePage extends StatefulWidget {
  const CalculatePage({super.key});

  @override
  State<CalculatePage> createState() => _CalculatePageState();
}

class _CalculatePageState extends State<CalculatePage> {
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
        title: Text("Calculate Page"),
      ),
      body: Column(
        children: [
          Text("Calculate Change", style: TextStyle(fontFamily: 'maaja', fontSize: 48, fontWeight: FontWeight.bold, color: Colors.deepPurple, backgroundColor: Colors.blue),),
          SizedBox(height: 16),
          Image.asset("assets/2.png", height: 100,),
          SizedBox(height: 16), 
          Image.network("https://plus.unsplash.com/premium_vector-1711987786379-aeea5e7e935e?q=80&w=1591&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D", height: 100),
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
