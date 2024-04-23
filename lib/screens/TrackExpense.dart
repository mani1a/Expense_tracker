import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TrackExpense extends StatelessWidget {


  List<ExpenseItems> items = [];

  TrackExpense({required this.items});

  @override
  Widget build(BuildContext context){
    return Scaffold(

      body: Container(

      ),

    );
  }
}

class ExpenseItems {

  var slNo;
  String itemName ;
  var price ;

  ExpenseItems({
    required this.slNo,required this.price,required this.itemName
});

  
}