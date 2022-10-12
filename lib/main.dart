import 'package:atom/GenerateQr.dart';
import 'package:atom/SelectAmount.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        'datos': (context) => SelectAmount(),
        'qr': (context) => GenerateQr(),
        // 'succes': (context) => SuccersTransaccion(),
        // 'fail': (context) => FailTransaccion(),
      },
      debugShowCheckedModeBanner: false,
      // home: HomePage()
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
                Text("Bienvenido",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                Image(
                    width: size.width * 0.7,
                    image: AssetImage(
                      "assets/appbar_label.png",
                    )),
                Text(
                  "Retire dinero en efectivo con nuestro Banicash",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Usa QR simple con la aplicacion de tu banco",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 40,
                ),
                Image(
                    width: size.width * 0.7,
                    image: AssetImage("assets/image.png")),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Image(
                      height: size.height * 0.15,
                      width: size.width * 0.15,
                      image: AssetImage("assets/select.png")),
                ),
                ElevatedButton(
                  child: Text('COMENZAR'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.teal,
                    onPrimary: Colors.white,
                    shape: const BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                  ),
                  onPressed: () {
                    print('Pressed');
                    Navigator.pushNamed(context, 'datos');
                  },
                )
              ],
            ),
          )),
    ));
  }
}
