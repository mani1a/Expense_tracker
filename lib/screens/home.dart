import 'package:eryc_expense_tracker/others/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),

    );
  }
}

class Home extends StatelessWidget {

  var groupName = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text('Home', style: TextStyle(fontSize: 20),),
        backgroundColor: Colors.white,

      ),
      body: group(),


    );
  }

  Widget group(){
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListView(
        children: [
          Text('data')
        ],
      ),
    );
  }

}