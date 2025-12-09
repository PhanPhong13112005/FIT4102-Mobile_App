import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const RichTextExample(),
    );
  }
}

class RichTextExample extends StatefulWidget {
  const RichTextExample({super.key});

  @override
  State<RichTextExample> createState() => _RichTextExampleState();
}

class _RichTextExampleState extends State<RichTextExample> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    String fullText =
        "Flutter is an open-source UI software development kit created by Google. "
        "It is used to develop cross platform applications for Android, iOS, Linux, macOS, Windows, Google Fuchsia, "
        "and the web from a single codebase. First described in 2015, Flutter was released in May 2017.\n\n"
        "Contact on +910002010056. Our email address is test@examplemail.org.\n"
        "For more details check https://www.google.com";

    String shortText = fullText.substring(0, 150) + "...";

    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom Rich Text Example"),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 4,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: isExpanded ? fullText : shortText,
                  style: const TextStyle(color: Colors.black, fontSize: 16),
                ),

                // READ MORE / READ LESS
                const TextSpan(text: " "),
                TextSpan(
                  text: isExpanded ? "Read less" : "Read more",
                  style: const TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      setState(() => isExpanded = !isExpanded);
                    },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
