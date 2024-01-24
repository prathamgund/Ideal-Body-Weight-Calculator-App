import 'package:flutter/material.dart';
import 'package:ideal_weight/input_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xff0c52323),
         appBarTheme: const AppBarTheme(
          color: Color(0xff0c52323),
          foregroundColor: Color(0xff0dad4b5),
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Color(0xff0dad4b5))),
      ),
      home: const InputPage(),
    );
  }
}








//  floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         child: const Icon(Icons.add),
//       ),