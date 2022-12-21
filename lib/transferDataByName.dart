import 'package:flutter/material.dart';
import 'package:navigation_example/user.dart';

class TransferDataByNamePage1 extends StatelessWidget {

  const TransferDataByNamePage1({super.key});

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

class TransferDataByNamePage2 extends StatelessWidget {

  TransferDataByNamePage2({super.key});

  User? user;

  @override
  Widget build(BuildContext context) {

    RouteSettings? settings = ModalRoute.of(context)?.settings;
    user = settings?.arguments as User?;

    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2: User is ${user?.name}, ${user?.age} years old'),
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
