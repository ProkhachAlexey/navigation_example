import 'package:flutter/material.dart';
import 'package:navigation_example/simpleTransferData.dart';
import 'package:navigation_example/transferDataByName.dart';
import 'package:navigation_example/transferDataWithOnGenerateRoute.dart';
import 'package:navigation_example/user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     home: const TransferDataByNamePage1(),
  //     routes: {
  //       '/first': (context) => const TransferDataByNamePage1(),
  //       '/second': (context) => TransferDataByNamePage2(),
  //     },
  //   );
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return const MaterialApp(
  //     home: SimpleTransferDataPage1(),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const TransferDataWithOnGenerateRoutePage1(),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(
                builder: (context) =>
                    const TransferDataWithOnGenerateRoutePage1());
          case '/second':
            User? user = settings.arguments as User?;
            return MaterialPageRoute(
                builder: (context) =>
                TransferDataWithOnGenerateRoutePage2(user!));
        }
      },
    );
  }
}
