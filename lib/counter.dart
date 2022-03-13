import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }
  void _refreshCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Score:',
                style: TextStyle(
                    fontSize: 45,
                    color: Colors.deepPurple,
                )
            ),

            Text(
              '$_counter',
              style:
              const TextStyle(
                  fontSize: 50,
                  color: Colors.deepPurple,
              )
            ),
          ],
        ),
      ),
    floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingActionButton (
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.plus_one),
      ),
        FloatingActionButton (
          onPressed: _refreshCounter,
          tooltip: 'Decrement',
          child: const Icon(Icons.refresh),
        ),
        FloatingActionButton (
          onPressed: _decrementCounter,
          tooltip: 'Decrement',
          child: const Icon(Icons.exposure_minus_1),
        )
      ]

    )
    );
  }
}