import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'TrackExpense.dart';

class ManageExpensePage extends StatefulWidget{
  @override
  State<ManageExpensePage> createState() => _ManageExpensePageState();
}

class _ManageExpensePageState extends State<ManageExpensePage> {

  var peopleController = TextEditingController();
  var slNo = 1;
  List<ExpenseItem> expenseItem = [];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Manage Expenses'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            TextField(controller: peopleController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter Number of People'
            ),
            ),

            for (var expenseItem in expenseItem)
              buildExpenseCard(expenseItem),

            ElevatedButton(onPressed: (){

              setState(() {
                expenseItem.add(ExpenseItem(slNo: slNo));
                slNo++;

              });

            }, child: const Text('Add')),
            ElevatedButton(onPressed: (){
              // Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                  // TrackExpense(items: expenseItem)));

            },
                child: Text('Save')),
          ],
        ),
      ),

    );
  }

  Widget buildExpenseCard(ExpenseItem expenseItem) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "${expenseItem.slNo}.",
              style: TextStyle(fontSize: 18.0),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.4,
            child: TextField(
              controller: expenseItem.itemController,
              decoration: InputDecoration(
                hintText: 'Enter Item',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.25,
            child: TextField(
              controller: expenseItem.priceController,
              decoration: InputDecoration(
                hintText: 'Price',
                suffixIcon: Icon(Icons.attach_money),
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          TextButton(onPressed: () {

          }, child: Icon(Icons.add)),
        ],
      ),
    );
  }


}

class ExpenseItem {
  final int slNo;
  final TextEditingController itemController;
  final TextEditingController priceController;

  ExpenseItem({
    required this.slNo,
}) : itemController = TextEditingController(),
  priceController = TextEditingController();

}