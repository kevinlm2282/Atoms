import 'dart:convert';

import 'package:atom/qrStructure.dart';
import 'package:flutter/material.dart';

class GenerateQr extends StatefulWidget {
  final QrStructure? qrStructure;

  GenerateQr({Key? key, this.qrStructure}) : super(key: key);

  @override
  State<GenerateQr> createState() => _GenerateQrState();
}

class _GenerateQrState extends State<GenerateQr> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Center(
      child: Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
                image: AssetImage("assets/background.png"), fit: BoxFit.fill),
          ),
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 40,
                ),
                Text("Escanea el codigo QR",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                Image(
                    width: size.width * 0.7,
                    image: AssetImage(
                      "assets/appbar_label.png",
                    )),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "${this.widget.qrStructure!.cantidad}Bs",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Image.memory(base64Decode(this.widget.qrStructure!.image)),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  child: Text('VOLVER'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.teal,
                    onPrimary: Colors.white,
                    shape: const BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                  ),
                  onPressed: () {
                    print('Pressed');
                    Navigator.pushNamed(context, '/');
                  },
                )
              ],
            ),
          )),
    ));
  }
}
