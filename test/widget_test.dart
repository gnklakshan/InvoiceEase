import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:invoiceease/MyApp.dart';
// import 'package:invoiceease/MyApp.dart';
import 'package:invoiceease/main.dart';

void main() {
  testWidgets('Check if welcome message is displayed',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the welcome message is displayed.
    expect(find.text('Welcome to InvoiceEase'), findsOneWidget);
  });
}
