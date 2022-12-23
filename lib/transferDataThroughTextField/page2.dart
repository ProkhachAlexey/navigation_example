import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State createState() => _Page2ScreenState();
}

class _Page2ScreenState
    extends State<Page2> {
  TextEditingController textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second screen'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: TextField(
              controller: textFieldController,
              style: const TextStyle(
                fontSize: 24,
                color: Colors.black,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              String textToSendBack = textFieldController.text;
              Navigator.pop(context, textToSendBack);
            },
            child: const Text('Send text back', style: TextStyle(fontSize: 24),),
          )
        ],
      ),
    );
  }
}