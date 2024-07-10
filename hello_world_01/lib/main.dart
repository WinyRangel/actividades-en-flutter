import 'package:flutter/material.dart';
import 'package:hello_world_01/presentation/screem/counter.dart';
import 'package:hello_world_01/presentation/screem/counter_functions_screen.dart';

void main() {
  runApp(const MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: Center(child: Text('Hola Mundo')),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

@override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.green,
      ),
      home: const CounterFunctionScreen(),
    );
  }
}
