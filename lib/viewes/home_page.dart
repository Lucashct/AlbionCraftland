import 'package:flutter/material.dart';
import 'package:albion_craftland/controls/gold_price_control.dart';
import 'craftCalculator.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Main Menu'),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 125,
                  height: 100,
                ),
                Image.asset(
                  'assets/icon_craftland.png',
                  width: 100,
                  height: 100,
                ),
                Container(
                  height: 100,
                  width: 45,
                ),
                goldPriceWidget()
              ],
            ),
            Column(
              children: [
                Padding(padding: const EdgeInsets.all(15)),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => craftCalulator()));
                  },
                  child: Text('Craft Calculator'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed))
                          return Theme.of(context)
                              .colorScheme
                              .primary
                              .withOpacity(0.5);
                        return null; // Use the component's default.
                      },
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
