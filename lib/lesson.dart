import 'package:flutter/material.dart';

void main() => runApp(ewq());

class ewq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Wulala",
            style: TextStyle(fontSize: 30, color: Colors.amberAccent),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(23),
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.amberAccent, width: 4),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                new BoxShadow(
                  color: Colors.black87,
                ),
              ],
            ),
            child: Container(
                decoration: BoxDecoration(),
                height: 300.0,
                width: 300,
                child:  Column (
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.pinkAccent),
                        child: const Text(
                          'Button 1',
                          style: TextStyle(color: Colors.amberAccent, fontSize: 20),
                        ),
                        onPressed: () {
                          print('hello');
                        },
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Button 2',
                          style: TextStyle(color: Colors.amberAccent, fontSize: 20),
                        ),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(
                              width: 2, color: Colors.lightBlueAccent),
                        ),
                        child: const Text(
                          'Button 3',
                          style: TextStyle(color: Colors.amberAccent, fontSize: 20),
                        ),
                      ),
                      OutlinedButton.icon(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(
                              width: 2, color: Colors.lightBlueAccent),
                        ),
                        icon: Text(
                          "Hello World",
                          style: TextStyle(color: Colors.amberAccent, fontSize: 20),

                        ),
                        label: Icon(
                          Icons.settings,
                          color: Colors.blue,
                        ),
                      ),
                    ])
            ),
          ),
        ),
        ),
      );
  }
}
