import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'utils/interfaces/loginSignup/login.dart';
import 'utils/routes/routes.dart';

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'InvoiceEase',
//       home: LoginScreen(),
//       // theme: ThemeData(
//       //   primarySwatch: Colors.blue,
//       // ),
//       // home: Scaffold(
//       //   appBar: AppBar(
//       //     title: Text('InvoiceEase Home Page   1'),
//       //   ),
//       //   body: Center(
//       //     child: Text('Welcome to InvoiceEase!'),
//       //   ),
//       // ),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'InvoiceEase',
      debugShowCheckedModeBanner: false,
      //home: LoginScreen(),
      initialRoute: RouteClass.getHomeRoute(),
      getPages: RouteClass.routes,
    );
  }
}
