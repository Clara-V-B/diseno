import 'package:flutter/material.dart';

import 'package:disenos/screens/basic_design.dart';
import 'package:disenos/screens/home_screen.dart';
import 'package:disenos/screens/scroll_screen.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
        //statusBarColor: Colors.red,
        //systemNavigationBarColor: Colors.amber,
        //systemNavigationBarDividerColor: Colors.green,
        systemNavigationBarIconBrightness: Brightness.dark));

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'home_screen',
        theme: ThemeData.dark(),
        routes: {
          'basic_design': (_) => BasicDesignScreen(),
          'scroll_screen': (_) => ScrollScreen(),
          'home_screen': (_) => HomeScreen(),
        });
  }
}
