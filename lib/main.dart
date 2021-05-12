import 'package:flutter/material.dart';
import 'dart:math';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color _containerColor = Colors.white;
  Color _textColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Container(
        

          child: GestureDetector(
          onTap: () {

            setState(() {
              Random random = new Random();
              _containerColor = Color.fromARGB(255, random.nextInt(255), random.nextInt(255), random.nextInt(255)); 
              _textColor = Color.fromARGB(255, random.nextInt(255), random.nextInt(255), random.nextInt(255)); 
            });
          },
          
          child: Container( 
            color: _containerColor,
            child: Center(
              child: Text(
                'Hey there',
                textDirection: TextDirection.ltr,
                style: TextStyle( 
                  color: _textColor, 
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
        ),
      
    );
  }
}
