import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.green, // Change this to your favorite color
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.pink, // Set the AppBar color to pink
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String displayMessage = "Welcome to Flutter!";

  void updateMessage() {
    setState(() {
      displayMessage = "Hello, Flutter!";
    });
  }

  void resetMessage() {
    setState(() {
      displayMessage = "Welcome to Flutter!";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Flutter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Add an image (replace with your image asset path)
            Image.asset('assets/PASSPORT%%%.jpg', height: 100),
            SizedBox(height: 16),
            Text(
              'HABIMANA ISHIMWE DIANE', // Your actual name
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: updateMessage,
              child: Text('Press Me'),
            ),
            SizedBox(height: 20),
            Text(
              displayMessage,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: resetMessage,
              child: Text('Reset'),
            ),
          ],
        ),
      ),
    );
  }
}