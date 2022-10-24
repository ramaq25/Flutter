import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:project_4/pages/register.dart';
import 'package:project_4/pages/language.dart';
import 'package:project_4/pages/welcome_page.dart';
import 'package:project_4/translations/locale_keys.g.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const InitialPage(),
        '/first': (context) => const FirstPage(),
        '/register': (context) => const SecondPage(),
        '/welcome': (context) => const WelcomePage()
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
              children: [
                Padding(
                  padding: const EdgeInsets.all(7),
                  child: Text(
                    LocaleKeys.welcome.tr(),
                    style: const TextStyle(fontSize: 35, color: Colors.white),
                  ),
                ),
                 const LoginBox()
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
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 45, right: 25, bottom: 15),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.mail),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50)
                ),
                hintText: LocaleKeys.username.tr(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 0, right: 25, bottom: 5),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.password),
                border: const OutlineInputBorder(),
                hintText: LocaleKeys.password.tr(),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 25, top: 0, right: 15, bottom: 15),
              child: Text(
                LocaleKeys.forgot_pw.tr(),
                style: const TextStyle(fontStyle: FontStyle.italic),
              )),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {Navigator.pushNamed(context, '/welcome');},
              child: Text(LocaleKeys.login_btn.tr()),
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(LocaleKeys.no_account.tr()),
                TextButton(onPressed: () {
                  Navigator.pushNamed(context, '/register');
                }, child: Text(LocaleKeys.register.tr()))
              ],
            ),
          )
        ],
      ),
    );
  }
}
