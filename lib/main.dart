import 'package:flutter/material.dart';

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
    return  Scaffold(
      backgroundColor: const Color(0xFF292D32),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),

                gradient: const RadialGradient(
                    colors:[Colors.black87,Colors.grey,] ,
                    radius: 20,
                  focalRadius: 5,

                ),
                boxShadow: const [
                  BoxShadow(
                      color: Color(0xFF2A2D32),
                      offset: Offset(5.0, 5.0),
                      blurRadius: 20.0,
                      spreadRadius: 1.0),
                  BoxShadow(
                      color: Color(0xFF2A2D32),
                      offset: Offset(-5.0, -5.0),
                      blurRadius: 20.0,
                      spreadRadius: 1.0),
                ],
              ),
              child:const Icon( Icons.ac_unit_sharp,color: Colors.green,),
            )
          ],
        ),
      ),
    );
  }
}
