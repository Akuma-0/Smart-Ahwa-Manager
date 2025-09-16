import 'package:flutter/material.dart';
import 'package:smart_ahwa_manager/ui/home_screen.dart';

class SmartAhwaManagerApp extends StatelessWidget {
  const SmartAhwaManagerApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'smart ahwa manager',
      home: HomeScreen(),
    );
  }
}
