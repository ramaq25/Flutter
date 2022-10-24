// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en = {
  "welcome": "Welcome!",
  "username": "Username / Email",
  "password": "Password",
  "forgot_pw": "Forgot Password?",
  "login_btn": "Login",
  "no_account": "Don't have an account?",
  "register": "Register",
  "name": "Name",
  "age": "Age",
  "sign_up": "Sign Up",
  "already_register": "Already a Member?"
};
static const Map<String,dynamic> kk = {
  "welcome": "Qosh keldińiz!",
  "username": "Account aty",
  "password": "Qupıa sóz",
  "forgot_pw": "Qupıa sózdi umyttyńyz ba?",
  "login_btn": "Kirý",
  "no_account": "Account joq pa?",
  "register": "Tirkelý",
  "name": "Atyńyz",
  "age": "Jasyńyz",
  "sign_up": "Tirkelý",
  "already_register": "Account bar ma?"
};
static const Map<String,dynamic> ru = {
  "welcome": "Добро пожаловать!",
  "username": "Имя пользователя",
  "password": "Пароль",
  "forgot_pw": "Забыли пароль?",
  "login_btn": "Войти",
  "no_account": "У вас нету аккаунта?",
  "register": "Регистрация",
  "name": "Имя",
  "age": "Возраст",
  "sign_up": "Регистрация",
  "already_register": "Уже есть аккаунт?"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "kk": kk, "ru": ru};
}
