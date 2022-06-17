import 'package:flutter/material.dart';

class FittedBoxPage extends StatefulWidget {
  const FittedBoxPage({Key? key}) : super(key: key);

  @override
  State<FittedBoxPage> createState() => _FittedBoxPageState();
}

class _FittedBoxPageState extends State<FittedBoxPage> {
  TextEditingController myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FittedBox'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text('Tanpa Menggunakan FittedBox :'),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                height: 50,
                width: 200,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    '${myController.text}',
                    style: TextStyle(fontSize: 28),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 50),
                child: Text('Menggunakan FittedBox :'),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                height: 50,
                width: 200,
                color: Colors.blue,
                child: Center(
                  child: FittedBox(
                    child: Text(
                      '${myController.text}',
                      style: TextStyle(fontSize: 28),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextField(
                  controller: myController,
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
