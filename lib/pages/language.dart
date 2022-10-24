import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:project_4/pages/register.dart';
import 'package:project_4/pages/login.dart';

class LanguagePage extends StatelessWidget {
  const LanguagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const InitialPage(),
        '/first': (context) => const FirstPage(),
        '/register': (context) => const SecondPage(),
      },
    );
  }
}

class InitialPage extends StatelessWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Expanded(
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
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10, top: 10),
                  child: SizedBox(
                    width: 250,
                    child: ElevatedButton(
                        onPressed: () async {
                          Navigator.pushNamed(context, '/first');
                          await context.setLocale(const Locale('ru'));
                        },
                        style: ElevatedButton.styleFrom(
                            minimumSize: const Size(50, 50)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 35,
                              height: 25,
                              child: Image.asset(
                                'assets/images/russia.png',
                                width: 30,
                                height: 20,
                              ),
                            ),
                            const Text(
                              ' Русский',
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10, top: 10),
                  child: SizedBox(
                    width: 250,
                    child: ElevatedButton(
                        onPressed: () async {
                          Navigator.pushNamed(context, '/first');
                          await context.setLocale(const Locale('kk'));
                        },
                        style: ElevatedButton.styleFrom(
                            minimumSize: const Size(50, 50)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 35,
                              height: 25,
                              child: Image.asset(
                                'assets/images/kazakhstan.png',
                                width: 30,
                                height: 20,
                              ),
                            ),
                            const Text(
                              ' Qazaqsha',
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10, top: 10),
                  child: SizedBox(
                    width: 250,
                    child: ElevatedButton(
                        onPressed: () async {
                          Navigator.pushNamed(context, '/first');
                          await context.setLocale(const Locale('en'));
                        },
                        style: ElevatedButton.styleFrom(
                            minimumSize: const Size(50, 50)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 35,
                              height: 25,
                              child: Image.asset(
                                'assets/images/usa.png',
                                width: 30,
                                height: 20,
                              ),
                            ),
                            const Text(
                              ' English',
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
