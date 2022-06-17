import 'package:flutter/material.dart';
import 'package:learn4/pages/cupertinoo.dart';
import 'package:learn4/pages/fitted.dart';
import 'package:learn4/pages/layoutbuild.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter 31 - 32'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'Materi Percobaan ',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return FittedBoxPage();
                }));
              },
              child: const Text('FittedBox'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return LayoutPage();
                }));
              },
              child: const Text('Layout Builder'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return CupertinoPage();
                }));
              },
              child: const Text('Cupertino'),
            ),
          ],
        ),
      ),
    );
  }
}
