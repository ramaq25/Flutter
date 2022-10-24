import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:project_4/pages/login.dart';
import 'package:project_4/pages/language.dart';
import '../translations/locale_keys.g.dart';
import 'package:project_4/pages/welcome_page.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const InitialPage(),
        '/first': (context) => const FirstPage(),
        '/register': (context) => const SecondPage(),
        '/welcome': (context) => const WelcomePage()
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
              children: [
                Padding(
                  padding: const EdgeInsets.all(7),
                  child: Text(
                    LocaleKeys.register.tr(),
                    style: const TextStyle(fontSize: 35, color: Colors.white),
                  ),
                ),
                const RegisterBox()
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
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 45, right: 25, bottom: 8),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.abc),
                border: const OutlineInputBorder(
                    // borderRadius: BorderRadius.circular(50)
                    ),
                hintText: LocaleKeys.name.tr(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 0, right: 25, bottom: 8),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.numbers),
                border: const OutlineInputBorder(),
                hintText: LocaleKeys.age.tr(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 0, right: 25, bottom: 8),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.mail),
                border: const OutlineInputBorder(),
                hintText: LocaleKeys.username.tr(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 0, right: 25, bottom: 8),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.password),
                border: const OutlineInputBorder(),
                hintText: LocaleKeys.password.tr(),
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
              child: Text(LocaleKeys.sign_up.tr()),
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(LocaleKeys.already_register.tr()),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/first');
                    },
                    child: Text(LocaleKeys.login_btn.tr()))
              ],
            ),
          )
        ],
      ),
    );
  }
}
