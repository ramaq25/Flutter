import 'package:flutter/material.dart';
import 'package:project_4/pages/register.dart';
import 'package:project_4/pages/login.dart';
import 'package:project_4/pages/language.dart';
import 'package:easy_localization/easy_localization.dart';
import 'translations//codegen_loader.g.dart';
import 'package:project_4/pages/welcome_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
      EasyLocalization(
      supportedLocales: const [Locale('kk'), Locale('ru'), Locale('en')],
      path: 'assets/translations',
      fallbackLocale: const Locale('ru'),
      assetLoader: const CodegenLoader(),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
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
