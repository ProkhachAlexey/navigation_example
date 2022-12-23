import 'package:flutter/material.dart';
import 'package:navigation_example/transferDataThroughTextField/page2.dart';

class Page1 extends StatefulWidget {
const Page1({super.key});

@override
State createState() => _Page1ScreenState();
}

class _Page1ScreenState
    extends State<Page1> {
  String text = 'Some text';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First screen'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Text(
                text,
                style: const TextStyle(fontSize: 30),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                _returnDataFromSecondScreen(context);
              },
              child: const Text(
                'Go to second screen',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _returnDataFromSecondScreen(BuildContext context) async {
    Route route = MaterialPageRoute(
        builder: (context) =>
        const Page2());
    final result = await Navigator.push(context, route);
    setState(() {
      text = result;
    });
  }
}