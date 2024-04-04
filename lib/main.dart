import 'package:flutter/material.dart';
import 'package:vie_app_project/screens/base_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'VieApp Test',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const BaseView(),
    );
  }
}
