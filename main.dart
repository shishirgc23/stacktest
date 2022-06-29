import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("stack test"),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              height: 180,
              width: 400,
              color: Colors.red,
            ),
          ),
          Positioned(
            top: 80,
            left: 25,
            right: 25,
            child: Container(
              child: Image.asset("assets/images/pock.jpg"),
              height: 180,
              width: 400,
            ),
          ),
         const  Positioned(
              top: 300,
              left: 50,
              right: 0,
              child: Text(
                "This is stack practice",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              )),
        ],
      ),
    );
  }
}
