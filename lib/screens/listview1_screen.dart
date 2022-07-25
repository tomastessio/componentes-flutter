import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final opciones = const ['Warzone', 'MW2', 'COD Black Ops', 'Infinity W'];

  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('ListView tipo 1')),
        body: ListView(children: [
          ...opciones
              .map((game) => ListTile(
                    title: Text(game),
                    trailing: const Icon(Icons.arrow_forward_ios_outlined),
                  ))
              .toList()

          // ListTile(
          //   title: Text('Hola mundo'),
          // )
        ]));
  }
}
