import 'package:eryc_expense_tracker/screens/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CreateGroup extends StatefulWidget{
  @override
  State<CreateGroup> createState() =>
    _CreateGroupState();


}

class _CreateGroupState extends State<CreateGroup> {

  final groupNameController = TextEditingController();
  final groupPersonController = TextEditingController();
  var groupName = "";
  var group = "";


  @override
  void initState() {
    super.initState();

    groupNameController.addListener(() {
      setState(() {
        group = groupNameController.text;
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: () {
            Navigator.pop(context);
          }, icon: const Icon(Icons.arrow_back)),
          title: const Text('Create Group'),
          backgroundColor: Colors.white,
        ),
        body: Container(
          padding: EdgeInsets.all(15),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView(
              children: [
                const Center(child: Text(
                  'Create Group', style: TextStyle(fontSize: 20),)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    controller: groupPersonController,
                    decoration: const InputDecoration(
                        labelText: 'Enter Number of Persons',
                        prefixIcon: Icon(Icons.people),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: groupNameController,
                    decoration: const InputDecoration(
                        labelText: 'Group Name',
                        prefixIcon: Icon(Icons.create),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        )
                    ),
                  ),
                ),
                ElevatedButton(onPressed: () {
                  group = groupNameController.text.toString();
                }, child: const Text('Create'),
                ),
                const Text(" Your Group ")

              ],


            ),
          ),
        )

    );
  }
}

