import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.card_membership_outlined,
              color: AppTheme.primary,
            ),
            title: Text('Soy un titulo'),
            subtitle: Text(
                "Sunt ut labore nisi aute ipsum duis aliquip magna occaecat qui. Tempor velit irure nostrud magna fugiat id aliquip veniam sunt fugiat proident pariatur amet mollit. In nisi do ut labore proident excepteur eiusmod duis. Consectetur exercitation irure deserunt dolor proident. Ut fugiat incididunt esse qui aliquip quis aute ea esse minim nisi amet do."),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 6),
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              TextButton(
                onPressed: () {},
                child: const Text('Cancelar'),
                style: TextButton.styleFrom(primary: Colors.green),
              ),
              TextButton(onPressed: () {}, child: const Text('Aceptar'))
            ]),
          )
        ],
      ),
    );
  }
}
