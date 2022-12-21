import 'package:flutter/material.dart';
import 'package:navigation_example/user.dart';

class SimpleTransferDataPage1 extends StatelessWidget {
  const SimpleTransferDataPage1({super.key});

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
            Route route = MaterialPageRoute(
                builder: (context) => SimpleTransferDataPage2(user));
            Navigator.push(context, route);
          },
          child: const Text('Go to Page 2'),
        ),
      ),
    );
  }
}

class SimpleTransferDataPage2 extends StatelessWidget {

  User? user;

  SimpleTransferDataPage2(this.user, {super.key});

  @override
  Widget build(BuildContext context) {
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
