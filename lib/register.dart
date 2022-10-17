import 'package:flutter/material.dart';
import 'package:project_4/main.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/first': (context) => const FirstPage(),
        '/register': (context) => const SecondPage()
      },
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.all(7),
                  child: Text(
                    'REGISTER PAGE',
                    style: TextStyle(fontSize: 35, color: Colors.white),
                  ),
                ),
                RegisterBox()
              ],
            )),
      ),
    );
  }
}


class RegisterBox extends StatelessWidget {
  const RegisterBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 420,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.white,
            Colors.white60,
          ],
        ),
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 25, top: 45, right: 25, bottom: 8),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.abc),
                border: OutlineInputBorder(
                    // borderRadius: BorderRadius.circular(50)
                    ),
                hintText: 'Name',
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25, top: 0, right: 25, bottom: 8),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.numbers),
                border: OutlineInputBorder(),
                hintText: 'Age',
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25, top: 0, right: 25, bottom: 8),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.mail),
                border: OutlineInputBorder(),
                hintText: 'Username / Email',
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25, top: 0, right: 25, bottom: 8),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.password),
                border: OutlineInputBorder(),
                hintText: 'Password',
              ),
            ),
          ),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {},
              child: const Text('Sign Up'),
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already A Member?'),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/first');
                    },
                    child: const Text('Sign Up'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
