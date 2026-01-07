import 'package:flutter/material.dart';
import 'package:kambio_app/config/dependencies.dart';
import 'package:kambio_app/ui/currency/currency_page.dart';

void main() {
  setupDependencies();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kambio',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepOrange)),
      home: const CurrencyPage(),
    );
  }
}
