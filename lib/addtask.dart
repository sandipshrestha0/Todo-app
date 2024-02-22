import 'package:flutter/material.dart';

class AddTask extends StatefulWidget {
  const AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  var selectedDate;
  String dropdownvalue = 'Heigh';
  var items = ['Heigh', 'Midd', 'Low'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Task"),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Card(
          shadowColor: Colors.black,
          elevation: 5,
          child: Container(
            width: 400,
            height: 600,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    height: 40,
                    width: 350,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: "Title"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                      height: 40,
                      width: 350,
                      child: Row(
                        children: [
                          Container(
                            width: 300,
                            height: 40,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 0.6),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(child: Text("${selectedDate}")),
                          ),
                          IconButton(
                            onPressed: () async {
                              DateTime? datepicked = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2011),
                                  lastDate: DateTime(2025));
                              if (datepicked != null) {
                                print(
                                    'Date: ${datepicked.month}-${datepicked.day}-${datepicked.year}');
                                setState(() {
                                  selectedDate =
                                      "${datepicked.month}-${datepicked.day}-${datepicked.year}";
                                });
                              }
                            },
                            icon: Icon(Icons.calendar_today),
                          ),
                        ],
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                      height: 40,
                      width: 350,
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 40,
                            width: 280,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 1),
                                borderRadius: BorderRadius.circular(5)),
                                child: Center(child: Text(dropdownvalue)),
                          ),
                          DropdownButton(
                              // value: dropdownvalue,
                              icon: Icon(Icons.arrow_drop_down),
                              items: items.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownvalue = newValue!;
                                });
                              }),
                        ],
                      )),
                ),
                SizedBox(
                  width: 350,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("add"),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
