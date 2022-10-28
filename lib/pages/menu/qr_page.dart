import 'package:flutter/material.dart';

class QRPage extends StatelessWidget {
  const QRPage ({Key? key}) : super(key: key);

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
    );
  }
}