import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int num1 = 0;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          // leading: const Icon(Icons.menu),
          title: const Text("iLundary"),
          actions: const [Icon(Icons.add)],
        ),
        drawer: const Drawer(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Numbers of Lundary $num1"),
              ElevatedButton(
                onPressed: () {
                  // setState(() {});
                  num1++;
                  print("Numbers of Lundary $num1");
                },
                child: const Text("add lundary"),
              ),
              const AddLundary(),
            ],
          ),
        ),
      ),
    );
  }
}

class AddLundary extends StatefulWidget {
  const AddLundary({Key? key}) : super(key: key);

  @override
  State<AddLundary> createState() => _AddLundaryState();
}

class _AddLundaryState extends State<AddLundary> {
  int num1 = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Numbers of Lundary $num1"),
        ElevatedButton(
          onPressed: () {
            setState(() {
              num1++;
            });
            print("Numbers of Lundary $num1");
          },
          child: const Text("add lundary"),
        )
      ],
    );
  }
}
