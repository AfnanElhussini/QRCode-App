import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
var qrstr ='Scan It';
class ScanScreen extends StatefulWidget {
  const ScanScreen({Key? key}) : super(key: key);

  @override
  _ScanScreenState createState() => _ScanScreenState();
}
class _ScanScreenState extends State<ScanScreen> {
  
  var height, width;

  @override
  Widget build(BuildContext context) {
    height= MediaQuery.of(context).size.height;
    width= MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Scanning QR code'),
      ),
      body: SingleChildScrollView(
        child: Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
SizedBox(
  height: 300,
),
              Center(
                child: ElevatedButton(
                onPressed: (){
                  scanQr();
                }
                , child: Text('Press here to Scan ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),)),
              ),
              SizedBox(
                height: height,
                width: width,
              )

            ],
          ),
        ),
      ),
    );
  }
  Future <void>scanQr()async{
    try{
      FlutterBarcodeScanner.scanBarcode('#2A99CF', 'cancel', true, ScanMode.QR).then((value){
        setState(() {
          qrstr=value;
        });
      });
    }catch(e){
      setState(() {
        qrstr='unable to read this';
      });
    }
  }
}








