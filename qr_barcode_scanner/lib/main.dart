import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:qr_barcode_scanner/screens/readqr.dart';
import 'package:qr_barcode_scanner/screens/scanqr.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QR Scanner',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'QR Code Scanner'),
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
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    ElevatedButton(onPressed: (){
      Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>CreateScreen()));
    }, child: Text('Create QR code', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),)),

    ElevatedButton(onPressed: (){
      Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>ScanScreen()));

    }, child: Text('Readd QR code', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),)),
  ],
),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
