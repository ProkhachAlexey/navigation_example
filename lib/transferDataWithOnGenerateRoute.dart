import 'package:flutter/material.dart';
import 'package:navigation_example/user.dart';

class TransferDataWithOnGenerateRoutePage1 extends StatelessWidget {
  const TransferDataWithOnGenerateRoutePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            User user = User('Alexey', 38);
            Navigator.pushNamed(context, '/second', arguments: user);
          },
          child: const Text('Go to Page 2'),
        ),
      ),
    );
  }
}

class TransferDataWithOnGenerateRoutePage2 extends StatelessWidget {

  final User user;

  const TransferDataWithOnGenerateRoutePage2(this.user, {super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2: User is ${user.name}, ${user.age} years old'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go to Back'),
        ),
      ),
    );
  }
}