import 'dart:convert';

import 'package:atom/qrStructure.dart';
import 'package:http/http.dart' as http;

class ServiceAtom {
  dynamic generarQr(double amount) async {
    QrStructure qrStructure;
    var url = 'https://v2.banipay.me/api/pagos/qr-payment/dispenser';
    var headers = {'Content-Type': 'application/json'};
    var response = await http.post(Uri.parse(url),
        headers: headers,
        body: jsonEncode({
          "amount": amount,
          "gloss": "retiro dinero",
          "affiliate": "01dde81d-12e6-4d5f-812d-4424b3c0d8b3",
          "business": "01dde81d-12e6-4d5f-812d-4424b3c0d101",
          "code": "DP-0002",
          "type": "DISPENSER",
          "idCommercial": "BC-0002"
        }));

    // return response.body;
    dynamic data = response.body;
    // qrStructure = QrStructure.fromJson(data);
    return jsonDecode(data);
    // print('Response status: ${response.statusCode}');
    // print('Response body: ${response.body}');
  }
}
