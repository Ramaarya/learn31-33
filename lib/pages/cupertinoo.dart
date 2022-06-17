import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CupertinoPage extends StatelessWidget {
  const CupertinoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cupertino'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return CupertinoAlertDialog(
                      title: Text('Delete Item'),
                      content: Text('Are you sure want to delete this item ?'),
                      actions: [
                        OutlinedButton(onPressed: () {}, child: Text('No')),
                        OutlinedButton(onPressed: () {}, child: Text('Yes')),
                      ],
                    );
                  });
            },
            child: Text('iOS'),
          ),
          ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Delete Item'),
                      content: Text('Are you sure want to delete this item ?'),
                      actions: [
                        OutlinedButton(onPressed: () {}, child: Text('No')),
                        OutlinedButton(onPressed: () {}, child: Text('Yes')),
                      ],
                    );
                  });
            },
            child: Text('Android'),
          ),
        ],
      )),
    );
  }
}
