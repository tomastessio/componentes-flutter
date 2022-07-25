import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
        // style: ElevatedButton.styleFrom(
        //   primary: Colors.red,
        //   elevation: 100,
        // ),
        onPressed: () {},
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Alerta',
            style: TextStyle(fontSize: 30),
          ),
        ),
      )),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          child: const Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }
}
