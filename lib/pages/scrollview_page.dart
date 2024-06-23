import 'package:flutter/material.dart';

class ScrollViewPage extends StatefulWidget {
  const ScrollViewPage({super.key});

  @override
  State<ScrollViewPage> createState() => _ScrollViewPageState();
}

class _ScrollViewPageState extends State<ScrollViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scroll View Page"),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              color: Colors.red,
            ),

            Container(
              height: 250,
              color: Colors.green,

            ),
            Container(
              height: 250,
              color: Colors.orange,
            ),
            Container(
              height: 250,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
