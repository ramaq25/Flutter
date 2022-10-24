import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blue,
              Colors.red,
            ],
          )),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Card(
              child: ListTile(
                leading: Image.asset('assets/images/russia.png'),
                title: const Text('News #1'),
                subtitle: const Text('Here should be text of the news number 1'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Image.asset('assets/images/kazakhstan.png'),
                title: const Text('News #2'),
                subtitle: const Text('Here should be text of the news number 2'),
              ),
            ),Card(
              child: ListTile(
                leading: Image.asset('assets/images/usa.png'),
                title: const Text('News #3'),
                subtitle: const Text('Here should be text of the news number 3'),
              ),
            ),
          ],
        ),
      )
    );
  }
}
