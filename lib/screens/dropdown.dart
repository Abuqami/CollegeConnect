import 'package:flutter/material.dart';

class dropdown extends StatefulWidget {
  const dropdown({Key? key}) : super(key: key);

  @override
  State<dropdown> createState() => _dropdownState();
}

class _dropdownState extends State<dropdown> {
  @override
  var items = ['1', '2', '3', '4'];
  String dropdownvalue = 'item 1';
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton(
              items: items.map((String items) {
                return DropdownMenuItem(
                  child: Text(items),
                  value: items,
                );
              }).toList(),
              onChanged: (String? newValue){
                setState((){
                  dropdownvalue = newValue!;
                });
              },
              value: dropdownvalue,
            ),
          ],
        ),
      ),
    );
  }
}
