import 'package:flutter/material.dart';
import 'package:circleshr/main.dart';
import 'package:circleshr/ExpenseRequest.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,


      home:Directionality(
        textDirection: TextDirection.rtl,
        child: ExpenseRequest(),
      ),

    );
  }


}