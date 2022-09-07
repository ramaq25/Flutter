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
            style: TextStyle(fontSize: 30, color: Colors.red),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(23),
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 4),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                new BoxShadow(
                  color: Colors.green,
                ),
              ],
              image: DecorationImage(
                image: NetworkImage(
                    "https://i.pinimg.com/originals/79/07/be/7907befc485ca9382f5b55834f9bc8a6.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(),
              height: 300.0,
              width: 300,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      child: const Text('Button 1'),
                      onPressed: () {
                        print('hello');
                      },
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Button 2',
                        style: TextStyle(color: Colors.yellow),
                      ),
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side:
                            BorderSide(width: 3, color: Colors.lightBlueAccent),
                      ),
                      child: const Text(
                        'Button 3',
                        style: TextStyle(color: Colors.yellowAccent),
                      ),
                    ),
                    OutlinedButton.icon(
                      onPressed: () {},
                      icon: Text(
                        "Hello World",
                        style: TextStyle(color: Colors.white),
                      ),
                      label: Icon(
                        Icons.settings,
                        color: Colors.white,
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
