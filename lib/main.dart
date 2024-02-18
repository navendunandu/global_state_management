import 'package:flutter/material.dart';
import 'package:global_state_management/HomePage.dart';
import 'package:provider/provider.dart';
import 'timer_provider.dart'; // import your TimerProvider class

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TimerProvider(),
      child: const MaterialApp(
        title: 'Flutter Demo',
        home: HomePage(),
      ),
    );
  }
}
