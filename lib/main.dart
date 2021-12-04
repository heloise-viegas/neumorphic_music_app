import 'package:flutter/material.dart';

import 'components/circle_shadow.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Musica',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF303030),
        body: Container(
          alignment: Alignment.center, //for cross axis alignment
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //  crossAxisAlignment: CrossAxisAlignment.start,//doesn't work cause width of col = width of child
            children: [
              const CircleShadow(
                circleSize: 200,
                icon: Icon(
                  Icons.ac_unit_sharp,
                  color: Color(0xFF28D3ED),
                  size: 40,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    CircleShadow(
                      circleSize: 100,
                      icon: Icon(
                        Icons.ac_unit_sharp,
                        color: Color(0xFF28D3ED),
                        size: 20,
                      ),
                    ),
                    CircleShadow(
                      circleSize: 100,
                      icon: Icon(
                        Icons.ac_unit_sharp,
                        color: Color(0xFF28D3ED),
                        size: 20,
                      ),
                    ),
                  ]),
            ],
          ),
        ));
  }
}
