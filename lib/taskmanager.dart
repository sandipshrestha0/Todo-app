import 'package:flutter/material.dart';
import 'package:todolist/addtask.dart';

class TaskManager extends StatefulWidget {
  const TaskManager({super.key});

  @override
  State<TaskManager> createState() => _TaskManagerState();
}

class _TaskManagerState extends State<TaskManager> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text("Tadk Manager"),
        backgroundColor: Colors.orange,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.history)),
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddTask()),
          );
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 40, right: 40),
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  SizedBox(height: 90,),
                  Column(
                    children: [
                      Text(
                        "send and email to the team",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text("mar 14, 2024 - high")
                    ],
                  ),
                  Spacer(),
                  Checkbox(
                    checkColor: Colors.black,
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  )
                ],
              ),
              Row(
                children: [
                  SizedBox(height: 50,),
                  Column(
                    children: [
                      Text(
                        "send and email to the team",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text("mar 14, 2024 - high")
                    ],
                  ),
                  Spacer(),
                  Checkbox(
                    checkColor: Colors.black,
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  
                ],
              ),
               Row(
                children: [
                  SizedBox(height: 90,),
                  Column(
                    children: [
                      Text(
                        "send and email to the team",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text("mar 14, 2024 - high")
                    ],
                  ),
                  Spacer(),
                  Checkbox(
                    checkColor: Colors.black,
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  
                ],
              ),
               Row(
                children: [
                  SizedBox(height: 90,),
                  Column(
                    children: [
                      Text(
                        "send and email to the team",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text("mar 14, 2024 - high")
                    ],
                  ),
                  Spacer(),
                  Checkbox(
                    checkColor: Colors.black,
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  
                ],
              ),
               Row(
                children: [
                  SizedBox(height: 90,),
                  Column(
                    children: [
                      Text(
                        "send and email to the team",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text("mar 14, 2024 - high")
                    ],
                  ),
                  Spacer(),
                  Checkbox(
                    checkColor: Colors.black,
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
