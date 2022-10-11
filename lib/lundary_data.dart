import 'package:flutter/material.dart';

class LundaryData extends StatefulWidget {
  const LundaryData({Key? key}) : super(key: key);

  @override
  State<LundaryData> createState() => _LundaryDataState();
}

class _LundaryDataState extends State<LundaryData> {
  int stock = 0;
  addStock() {
    setState(() {
      stock++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.amber[200],
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text("numbers of lundary in stock $stock"),
            ElevatedButton(
              onPressed: () {
                addStock();
              },
              child: const Text("add stock"),
            ),
          ],
        ),
      ),
    );
  }
}
