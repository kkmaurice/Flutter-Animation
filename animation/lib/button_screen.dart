// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';

class ButtonScreen extends StatefulWidget {
  const ButtonScreen({super.key});

  @override
  State<ButtonScreen> createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  List<Map<String, dynamic>> _names = [
    {'name': 'Mike', 'role':'Flutter developer', 'age': '19'},
    {'name': 'John', 'role':'Content writer', 'age': '24'},
    {'name': 'Opolot', 'role':'Chief editor', 'age': '30'},
    {'name': 'Otengo', 'role':'Camera man photos', 'age': '16'},
  ];

  int selectedValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Radio Button Test'),
      ),
      body: 
      ListView.builder(
        itemCount: _names.length,
        itemBuilder: (context,index){
          return RadioListTile(
            value: index, 
            groupValue: selectedValue, 
            title: Text(_names[index]['name']),
            subtitle: Text(_names[index]['role']),
            secondary:  OutlinedButton(onPressed: (){}, child: const Text('View Profile')),
            onChanged: (val){
              setState(() {
                selectedValue = val!;
              });
            });
        }),
    );
  }
}