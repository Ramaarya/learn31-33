import 'package:flutter/material.dart';

class LayoutPage extends StatefulWidget {
  const LayoutPage({Key? key}) : super(key: key);

  @override
  State<LayoutPage> createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  bool isOn1 = false;
  bool isOn2 = false;

  @override
  Widget build(BuildContext context) {
    final heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('LayoutBuilder'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            width: double.infinity,
            height: (isOn1) ? heightScreen * 0.5 : heightScreen * 0.2,
            color: Colors.blue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyContainer1(),
                MyContainer1(),
                MyContainer1(),
              ],
            ),
          ),
          ListTile(
            subtitle: const Text(
              'Ubah Ukuran Container',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Switch(
                value: isOn1,
                onChanged: (Value) {
                  setState(() {
                    isOn1 = !isOn1;
                  });
                }),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            width: double.infinity,
            height: (isOn2) ? heightScreen * 0.5 : heightScreen * 0.2,
            color: Colors.blue,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyContainer(),
                MyContainer(),
                MyContainer(),
              ],
            ),
          ),
          ListTile(
            subtitle: const Text(
              'Ubah Ukuran LayoutBuilder',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Switch(
                value: isOn2,
                onChanged: (Value) {
                  setState(() {
                    isOn2 = !isOn2;
                  });
                }),
          ),
        ],
      ),
    );
  }
}

class MyContainer1 extends StatelessWidget {
  const MyContainer1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 50,
      color: Colors.yellow,
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          height: constraints.maxHeight * 0.7,
          width: 50,
          color: Colors.yellow,
        );
      },
    );
  }
}
