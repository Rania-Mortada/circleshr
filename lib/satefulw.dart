
import 'package:flutter/material.dart';
class MyDropdownButton extends StatefulWidget {
  @override
  _MyDropdownButtonState createState() => _MyDropdownButtonState();
 // _MessageScreenState createState() => _MessageScreenState();

}

class _MyDropdownButtonState extends State<MyDropdownButton> {
  String selectedValue = 'رانيا';
  String? _dropDownValue;
  List<String> options = ['رانيا', 'اسراء', 'رحاب', 'عبير'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30,right: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DropdownButton(
            hint: _dropDownValue == null
                ? Text('رانيا')
                : Text(
              _dropDownValue!,
              style: TextStyle(color: Colors.black),
            ),
            isExpanded: true,
            iconSize: 30,
            style: TextStyle(color: Colors.black),
            items: ['اسراء', 'عبير', 'رحاب','رانيا'].map(
                  (val) {
                return DropdownMenuItem<String>(
                  value: val,
                  child: Text(val),
                );
              },
            ).toList(),
            onChanged: (val) {
              setState(
                    () {
                  _dropDownValue = val;
                },
              );
            },
          )
        ],
      ),
    );
  }
}








/*class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Message App',
      home: MessageScreen(),
    );
  }
}*/


