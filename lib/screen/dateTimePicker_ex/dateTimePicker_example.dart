import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatetimepickerExample extends StatefulWidget {
  const DatetimepickerExample({super.key});

  @override
  State<DatetimepickerExample> createState() => _DatetimepickerExampleState();
}

class _DatetimepickerExampleState extends State<DatetimepickerExample> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date time picker"),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              showDatePicker(
                context: context,
                firstDate: DateTime(2000),
                lastDate: DateTime.now(),
                initialDate: DateTime.now(),
              ).then(
                (value) {
                  debugPrint("date picker : $value");
                  setState(() {
                    selectedDate = value!;
                  });
                },
              );
            },
            child: Text(
              "show date picker",
            ),
          ),
          ElevatedButton(
            onPressed: () {
              showTimePicker(
                context: context,
                initialTime: TimeOfDay.now(),
                //  first click it will going to input first
                // initialEntryMode: TimePickerEntryMode.input,
              ).then(
                (value) {
                  print("time $value");
                  setState(() {
                    selectedTime = value!;
                  });
                  selectedDate = DateTime(
                    selectedDate.year,
                    selectedDate.month,
                    selectedDate.day,
                    selectedTime.hour,
                    selectedTime.minute,
                  );
                },
              );
            },
            child: Text("show time "),
          ),
          Text(
              "select date : ${selectedDate.day} ${selectedDate.month} ${selectedDate.year}"),
          Text(
              "select date : ${DateFormat("EEEE/dd/MMM/y").format(selectedDate)}"),
          Text("select time : ${selectedTime.hour}:${selectedTime.minute}"),
          Text("select time : ${DateFormat("hh:mm aaa ")}:${selectedTime.minute}"),
        ],
      ),
    );
  }
}
