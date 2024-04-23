import 'package:flutter/material.dart';
import 'package:eryc_expense_tracker/others/navbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expense Tracker',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var slNo = 1;
  List<ExpenseItem> expenseItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: const Text("Expense Manager"),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: ListView(
        children: [
          for (var expenseItem in expenseItems)
            buildExpenseCard(expenseItem),
          ElevatedButton(
            onPressed: () {
              setState(() {
                expenseItems.add(ExpenseItem(slNo: slNo));
                slNo++;
              });
            },
            child: Text("More"),
          ),
          ElevatedButton(onPressed: () {}, child: Text("Save")),
        ],
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
            width: MediaQuery.of(context).size.width * 0.5,
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
          TextButton(onPressed: () {}, child: Icon(Icons.add)),
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
  })  : itemController = TextEditingController(),
        priceController = TextEditingController();
}
