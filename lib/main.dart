import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ColorGrid(),
              SizedBox(height: 20),
              Text(
                'YEZA YOFANKA',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ColorGrid extends StatelessWidget {
  final List<Color> colors = [
    Colors.green,
    Colors.orange,
    Colors.green,
    Colors.orange,
    Colors.pink,
    Colors.blue,
  ];

  final List<double> widths = [100, 80, 60, 90, 110, 50];
  final List<double> heights = [90, 60, 50, 70, 100, 40];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Wrap(
          spacing: 20.0,
          runSpacing: 20.0,
          children: colors.sublist(0, 4).asMap().entries.map((entry) {
            int index = entry.key;
            Color color = entry.value;
            double width = widths[index];
            double height = heights[index];
            return Container(
              width: width,
              height: height,
              color: color,
            );
          }).toList(),
        ),
        Divider(), // Add a divider between the sections
        Wrap(
          spacing: 20.0,
          runSpacing: 20.0,
          children: colors.sublist(4).asMap().entries.map((entry) {
            int index = entry.key + 4; // Untuk memulai indeks dari 4
            Color color = entry.value;
            double width = widths[index];
            double height = heights[index];
            return Container(
              width: width,
              height: height,
              color: color,
            );
          }).toList(),
        ),
      ],
    );
  }
}
