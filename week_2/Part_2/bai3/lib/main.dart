import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Exercise01-Lab09",
      home: ExampleButtons(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ExampleButtons extends StatelessWidget {
  const ExampleButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Gradient Buttons')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 20),

            GradientButton(
              text: "Click me 1",
              colors: const [Colors.green, Colors.teal],
              onTap: () {
                showMessage(context, "Click me 1");
              },
            ),

            const SizedBox(height: 15),

            GradientButton(
              text: "Click me 2",
              colors: const [Colors.red, Colors.orange],
              onTap: () {
                showMessage(context, "Click me 2");
              },
            ),

            const SizedBox(height: 15),

            GradientButton(
              text: "Click me 3",
              colors: const [Colors.blue, Colors.lightBlueAccent],
              onTap: () {
                showMessage(context, "Click me 3");
              },
            ),

            const SizedBox(height: 15),

            GradientButton(
              text: "Click me 4",
              colors: const [Colors.black87, Colors.grey],
              onTap: () {
                showMessage(context, "Click me 4");
              },
            ),
          ],
        ),
      ),
    );
  }

  void showMessage(BuildContext context, String msg) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }
}

/// ---------------------------------------------------------
/// WIDGET NÚT GRADIENT DÙNG CHUNG
/// ---------------------------------------------------------
class GradientButton extends StatelessWidget {
  final String text;
  final List<Color> colors;
  final VoidCallback onTap;

  const GradientButton({
    super.key,
    required this.text,
    required this.colors,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(40),
      onTap: onTap,
      child: Container(
        height: 55,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: colors),
          borderRadius: BorderRadius.circular(40),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
