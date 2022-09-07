import 'package:flutter/material.dart';

void main() => runApp(qwe());

class qwe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.red),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello World', style: TextStyle(fontSize: 30),),
          centerTitle: true,
        ),
        body: Center(
            child: Text('My name is Ramazan', style: TextStyle(
                fontSize: 32,
                color: Colors.purpleAccent,
                fontFamily: 'LOKICOLA'
            ),)
        ),
        floatingActionButton: FloatingActionButton(
      child: Text('Click Me', style: TextStyle(
          color: Colors.yellow
      ),),
      backgroundColor: Colors.deepOrangeAccent,
      onPressed: () {
        print('Clicked');
      },
    ),)
    ,
    );
  }

}
