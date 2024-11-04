import '../../Pages/Login/login.dart';
import 'package:flutter/material.dart';
import '../../Pages/Invoices/invoices.dart';
import '../../Pages/Limit/limit.dart';
import '../../Pages/Loyalty/loyalt.dart';
import '../../Pages/Financial/financial.dart';
import '../../Pages/Register/register.dart';
//import '../../Pages/Reset/reset.dart';
import '../../Pages/Shopping/shopping.dart';
import '../../Pages/Detail/detail.dart';

class AppRoutes{
  static const String login       = '/';
  static const String home        = '/home';
  static const String limit       = '/limit';
  static const String loyalt      = '/loyalt';
  static const String financial   = '/financial';
  static const String invoices    = '/invoices';
  static const String register    = '/register';
  //static const String reset     = '/reset';
  static const String shopping    = '/shopping';
  static const String detail      = '/detail';


  //Função Map
  static Map<String, WidgetBuilder> get routes{
    return{
      login: (context) => const Login(),
      home: (context) => const Invoices(),
      limit: (context) => const Limit(),
      loyalt: (context) => const Loyalt(),
      shopping: (context) => const Shopping(),
      financial: (context) => const Financial(),
      invoices: (context) => const Invoices(),
      detail: (context) => const Detail(),
      register: (register) => Register(),
    };
  }
}