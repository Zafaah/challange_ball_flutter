import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(home: bellPage()),
  );
}

class bellPage extends StatelessWidget {
  const bellPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          centerTitle: true,
          title: Text("Ask me Anything"),
        ),
        body: _bellSState());
  }
}

class _bellSState extends StatefulWidget {
  const _bellSState({super.key});

  @override
  State<_bellSState> createState() => __bellSStateState();
}

class __bellSStateState extends State<_bellSState> {
  int ballAnwers = 1;
  void ballChange() {
    setState(() {
      ballAnwers = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                ballChange();
              },
              child: Image.asset('images/ball$ballAnwers.png'),
            ),
          ),
        ],
      ),
    );
  }
}
