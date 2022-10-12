import 'dart:developer';

import 'package:atom/GenerateQr.dart';
import 'package:atom/qrStructure.dart';
import 'package:atom/serviceAtom.dart';
import 'package:flutter/material.dart';

class SelectAmount extends StatefulWidget {
  SelectAmount({Key? key}) : super(key: key);

  @override
  State<SelectAmount> createState() => _SelectAmountState();
}

class _SelectAmountState extends State<SelectAmount> {
  int monto = 0;
  double debito = 0;
  double total = 0.0;
  bool flag = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    TextEditingController controller = TextEditingController();

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
                  height: 10,
                ),
                Image(
                    width: size.width * 0.7,
                    image: AssetImage(
                      "assets/appbar_label.png",
                    )),
                Text(
                  "Ingrese el monto que desea retirar",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Monto a retirar",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "${monto}Bs",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: size.width * 0.7,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                        "Comision por el servicio: ",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "${debito}Bs",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: size.width * 0.7,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                        "Total a debitar : ",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "${monto + debito}Bs",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: size.width * 0.7,
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          FloatingActionButton(
                              child: Text("10"),
                              backgroundColor: Colors.teal,
                              onPressed: () {
                                controller.text = "10";
                                monto = int.parse(controller.text);
                                debito = monto * 0.05;
                                print(monto);
                                print("debito ${debito}");
                                setState(() {});
                              }),
                          FloatingActionButton(
                              child: Text("20"),
                              backgroundColor: Colors.teal,
                              onPressed: () {
                                controller.text = "20";
                                monto = int.parse(controller.text);
                                debito = monto * 0.05;
                                print(monto);
                                print("debito ${debito}");
                                setState(() {});
                              }),
                          FloatingActionButton(
                              backgroundColor: Colors.teal,
                              child: Text("50"),
                              onPressed: () {
                                controller.text = "50";
                                monto = int.parse(controller.text);
                                debito = monto * 0.05;
                                print(monto);
                                print("debito ${debito}");
                                setState(() {});
                              }),
                          FloatingActionButton(
                              backgroundColor: Colors.teal,
                              child: Text("100"),
                              onPressed: () {
                                controller.text = "100";
                                monto = int.parse(controller.text);
                                debito = monto * 0.05;
                                print(monto);
                                print("debito ${debito}");
                                setState(() {});
                              }),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: size.width * 0.7,
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          FloatingActionButton(
                              backgroundColor: Colors.teal,
                              child: Text("200"),
                              onPressed: () {
                                controller.text = "200";
                                monto = int.parse(controller.text);
                                debito = monto * 0.05;
                                print(monto);
                                print("debito ${debito}");
                                setState(() {});
                              }),
                          FloatingActionButton(
                              backgroundColor: Colors.teal,
                              child: Text("250"),
                              onPressed: () {
                                controller.text = "250";
                                monto = int.parse(controller.text);
                                debito = monto * 0.05;
                                print(monto);
                                print("debito ${debito}");
                                setState(() {});
                              }),
                          FloatingActionButton(
                              backgroundColor: Colors.teal,
                              child: Text("350"),
                              onPressed: () {
                                controller.text = "350";
                                monto = int.parse(controller.text);
                                debito = monto * 0.05;
                                print(monto);
                                print("debito ${debito}");
                                setState(() {});
                              }),
                          FloatingActionButton(
                              backgroundColor: Colors.teal,
                              child: Text("500"),
                              onPressed: () {
                                controller.text = "500";
                                monto = int.parse(controller.text);
                                debito = monto * 0.05;
                                print(monto);
                                print("debito ${debito}");
                                setState(() {});
                              }),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: size.width * 0.7,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      ElevatedButton(
                        child: Text('CANCELAR'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.teal,
                          onPrimary: Colors.white,
                          shape: const BeveledRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                        ),
                        onPressed: () {
                          print('Pressed');
                          // Navigator.pushNamed(context, '/');
                        },
                      ),
                      ElevatedButton(
                        child: Text('ACEPTAR'),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.purple,
                          onPrimary: Colors.white,
                          shape: const BeveledRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                        ),
                        onPressed: () async {
                          if (monto != 0) {
                            total = monto + debito;
                            var response = await ServiceAtom().generarQr(total);
                            QrStructure qrStructure =
                                QrStructure(total, response['image']);
                            print(qrStructure);
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              if (response != null) {
                                return GenerateQr(
                                  qrStructure: qrStructure,
                                );
                              } else {
                                return Center(
                                  child: CircularProgressIndicator(),
                                );
                              }
                            }));
                          } else {
                            showDialog<void>(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text('Datos incorrectos'),
                                  content:
                                      const Text("Selecione una opcion de"),
                                  actions: <Widget>[
                                    TextButton(
                                      style: TextButton.styleFrom(
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .labelLarge,
                                      ),
                                      child: const Text('Aceptar'),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
                          }
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    ));
  }
}
