import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:invoiceease/MyApp.dart';
import 'package:invoiceease/backend/firebase_options.dart';

// void main() {
//   runApp(const MyApp());
// }

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
