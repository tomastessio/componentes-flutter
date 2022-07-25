import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 200;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders & Checks Screen'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
              min: 100,
              max: 500,
              activeColor: AppTheme.primary,
              value: _sliderValue,
              onChanged: _sliderEnabled
                  ? (value) {
                      _sliderValue = value;
                      setState(() {});
                    }
                  : null),
          // Checkbox(
          //     value: _sliderEnabled,
          //     onChanged: (value) {
          //       _sliderEnabled = value ?? true;
          //       setState(() {});
          //     }),
          CheckboxListTile(
              activeColor: AppTheme.primary,
              title: const Text('Habilitar la barra'),
              value: _sliderEnabled,
              onChanged: ((value) => setState(() {
                    _sliderEnabled = value ?? true;
                  }))),

          SwitchListTile(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar la barra'),
            value: _sliderEnabled,
            onChanged: ((value) => setState(() {
                  _sliderEnabled = value;
                })),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage(
                    'https://assets-es.imgfoot.com/ucl-psg-lionel-messi-scores-ag-manchester-city.jpg'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          )
        ],
      ),
    );
  }
}
