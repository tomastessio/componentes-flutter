import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tomas Tessio'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 6),
            child: CircleAvatar(
              backgroundColor: Colors.green[900],
              child: const Text('TT'),
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 150,
          backgroundImage: NetworkImage(
              'https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/styles/1200/public/media/image/2018/12/joker-nuevas-fotos-rodaje_2.jpg?itok=jMuv-2Qe'),
        ),
      ),
    );
  }
}
