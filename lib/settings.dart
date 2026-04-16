import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class SettingsDemo extends StatefulWidget {
  const SettingsDemo({super.key});

  @override
  State<SettingsDemo> createState() => _SettingsDemoState();
}

class _SettingsDemoState extends State<SettingsDemo> {
  bool isSwitchOn = false;
  double selectedValue = 20;
  String? selectedGender;
  List<String> gender = ["Male", "Female", "Others"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Card(
            color: isSwitchOn ? Colors.yellow : Colors.grey,
            child: ListTile(
              leading: Icon(isSwitchOn ? Icons.notifications_active : Icons.notifications_off),
              title: Text("Notifications"),
              subtitle: Text(isSwitchOn ? "ON" : "OFF"),
              trailing: CupertinoSwitch(
                activeColor: Colors.blue,
                  inactiveTrackColor: Colors.black,
                  thumbColor: Colors.red,
                  inactiveThumbColor: Colors.orange,
                  value: isSwitchOn,
                  onChanged: (value){
                    setState(() {
                      isSwitchOn = value;
                    });
                  }),
            ),
          ),

          Slider(
              value: selectedValue,
              min: 0,
              max: 100,
              divisions: 100,
              label: selectedValue.round().toString(),
              onChanged: (value){
                setState(() {
                  selectedValue = value;
                });
              }),

          DropdownButton(
            hint: Text("Select Your Gender"),
              value: selectedGender,
              items: gender.map((item){
                return DropdownMenuItem(
                     value: item,
                    child: Text(item.toString()));
              }).toList(),
              onChanged: (value){
              setState(() {
                selectedGender = value;
              });
              }),

          Pinput(
            length: 6,
            showCursor: true,
            onCompleted: (value){
              print(value);
            },
            defaultPinTheme: PinTheme(
              width: 50,height: 50,
              decoration: BoxDecoration(
                color: Colors.black38,
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10),
              ),
              textStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w900,
                color: Colors.white
              )
            ),
          ),

        ],
      ),
    );
  }
}
