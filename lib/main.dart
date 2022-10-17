import 'package:flutter/material.dart';
import 'package:project_4/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/first',
        routes: {
          '/first': (context) => const FirstPage(),
          '/register': (context) => const SecondPage()
        },
        );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

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
                    'WELCOME',
                    style: TextStyle(fontSize: 35, color: Colors.white),
                  ),
                ),
                LoginBox()
              ],
            )),
      ),
    );
  }
}


class LoginBox extends StatelessWidget {
  const LoginBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 350,
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
            padding: EdgeInsets.only(left: 25, top: 45, right: 25, bottom: 15),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.mail),
                border: OutlineInputBorder(
                  // borderRadius: BorderRadius.circular(50)
                ),
                hintText: 'Username / Email',
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25, top: 0, right: 25, bottom: 5),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.password),
                border: OutlineInputBorder(),
                hintText: 'Password',
              ),
            ),
          ),
          const Padding(
              padding: EdgeInsets.only(left: 25, top: 0, right: 15, bottom: 15),
              child: Text(
                'Forgot Password?',
                style: TextStyle(fontStyle: FontStyle.italic),
              )),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {},
              child: const Text('Login'),
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Don"t have an account?'),
                TextButton(onPressed: () {
                  Navigator.pushNamed(context, '/register');
                }, child: const Text('Register'))
              ],
            ),
          )
        ],
      ),
    );
  }
}
