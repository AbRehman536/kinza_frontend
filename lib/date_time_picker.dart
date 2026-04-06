import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimePickerDemo extends StatefulWidget {
  const DateTimePickerDemo({super.key});

  @override
  State<DateTimePickerDemo> createState() => _DateTimePickerDemoState();
}

class _DateTimePickerDemoState extends State<DateTimePickerDemo> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(
        title: Text(" Date & Time"),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            showDatePicker(
                context: context,
                firstDate: DateTime(2000),
                lastDate: DateTime.now())
                .then((value){
                  setState(() {
                    selectedDate = value!;
                  });
            });
          }, child: Text("Select Date")),
          Text(DateFormat.yMMMEd().format(selectedDate)),
          SizedBox(height: 100,),
          ElevatedButton(onPressed: (){
            showTimePicker(
                context: context,
                initialTime: TimeOfDay.now())
                .then((val){
                  setState(() {
                    selectedTime = val!;
                  });
            });
          }, child: Text("Select Time")),
          Text(selectedTime.format(context).toString())

        ],
      ),
    );
  }
}
