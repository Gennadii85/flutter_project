import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:pet/drawerappbar.dart';

class NewTodo extends StatefulWidget {
  const NewTodo({Key? key}) : super(key: key);

  @override
  State<NewTodo> createState() => NewTodoState();
}

class NewTodoState extends State<NewTodo> {
  final textcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: const DrawerAppBar(),
        appBar: AppBar(
          title: const Text('New Todo'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            controller: textcontroller,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12))),
            style: TextStyle(backgroundColor: Colors.grey[200], fontSize: 20),
          ),
        ),
        floatingActionButton: ElevatedButton(
          onPressed: () {
            Hive.box('listbox').add(textcontroller.text);
            Navigator.of(context).pop();
          },
          child: const Text('Save'),
        ),
      ),
    );
  }
}
