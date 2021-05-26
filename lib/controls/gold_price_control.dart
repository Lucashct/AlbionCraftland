import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List> getDados() async {
  http.Response response = await http
      .get('https://www.albion-online-data.com/api/v2/stats/gold?count=1');
  if (response.statusCode == 200) {
    return json.decode(response.body);
  } else {
    throw Exception('Falha na Conexão');
  }
}

Widget goldPriceWidget() {
  return FutureBuilder(
      future: getDados(),
      builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
        if (snapshot.hasData) {
          List dados = snapshot.data;
          return Container(
            width: 20,
            height: 20,
            child: Wrap(
              direction: Axis.vertical,
              children: [
                Image.asset(
                  'assets/gold_icon.png',
                ),
                Text(
                  '${dados[0]['price']}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          );
        }
      });
}
