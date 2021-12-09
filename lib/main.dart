import 'package:flutter/material.dart';
import 'package:src/Integrations/random_api.dart';
import 'package:src/Models1/random_info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test App',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Test App Home page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

    final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(

          title: Text(widget.title),
        ),

        body: Center( ));



      //Luua Käsklus, mis toob välja API-st Random numbri
    // RandomInfo.fromJson(Map<String, dynamic> == jsonDecode Data[0])  //standard täpne järjekord
    //
     

  }
}
