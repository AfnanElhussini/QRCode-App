import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
class CreateScreen extends StatefulWidget {
  const CreateScreen({Key? key}) : super(key: key);

  @override
  _CreateScreenState createState() => _CreateScreenState();
}
class _CreateScreenState extends State<CreateScreen> {
  var qrstr='Add Data';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Creating QR code'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BarcodeWidget(data: qrstr, barcode: Barcode.qrCode(),
          color: Colors.blue,
            width: 250,
            height: 250,
          ),
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width*0.8,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Enter your Data Here',
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 2,
                  )
                )
              ),
              onChanged: (value){
                setState(() {
                  qrstr==value;
                });

              },
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
          )
        ],
      ),
    );
  }
}
