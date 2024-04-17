import 'package:flutter/material.dart';
import 'package:invoiceease/interfaces/billCreate/detailScreen.dart';
import 'package:invoiceease/interfaces/loginSignup/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'InvoiceEase',
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      //home: detailScreen(),
    );
  }
}
