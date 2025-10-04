import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: null,
                style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.amber),
                    shape: WidgetStateProperty.all(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    )
                ),
                child: const Text(
                  "Привет я elevated button",
                  style: TextStyle(
                      color: Colors.blue
                  ),
                )
            ),
            SizedBox(width: 200, height: 200),
            Text(
                'Данилов Максим Сергеевич\nИКБО-06-22\n22И1124',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.amber
                )
            ),
          ],
        )
      )
    );
  }
}
