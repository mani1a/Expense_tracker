import 'package:eryc_expense_tracker/screens/manageExpensesPage.dart';
import 'package:eryc_expense_tracker/screens/createGroupPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget{

  @override
  State<NavBar> createState() => _NavbarState();
}

class _NavbarState extends State<NavBar> {

  var name = " name ";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Text(name),

          ),
          ListTile(
            title: const Text('Create Group'),
            onTap: (){
              // CreateGroup();
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context){
                    return CreateGroup();
                  }));


            },
          ),
          ListTile(
            title: const Text('Join Group'),
            onTap: (){
              // Jion Group();
              Navigator.pop(context);
              showDialog(context: context, builder: (BuildContext context){
              return AlertDialog(
                title: const Text("Join Group"),
                content: TextField(
                  controller: TextEditingController(),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                    hintText: 'Enter Group ID'
                  ),
                ),
                actions: [
                  ElevatedButton(onPressed: (){}, child: Text('Join')),
                  ElevatedButton(onPressed: ()
                  {Navigator.pop(context);},
                      child: Text('Cancel'))

                ],

              );});


            }
          ),
          ListTile(
            title: const Text('Manage Expenses'),
            onTap: (){
              // CreateGroup();
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context){
                    return ManageExpensePage();
                  }));


            },
          ),

        ],
      ),


    );
  }



}
