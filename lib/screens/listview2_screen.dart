import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final opciones = const ['Warzone', 'MW2', 'COD Black Ops', 'Infinity W'];

  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView tipo 2'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                title: Text(opciones[index]),
                trailing: const Icon(
                  Icons.arrow_forward_ios_outlined,
                ),
                onTap: (() {
                  final juego = opciones[index];
                  print(juego);
                })),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: opciones.length));
  }
}
