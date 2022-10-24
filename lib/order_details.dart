import 'package:flutter/material.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({Key? key, required this.clothType, required this.colourType}) : super(key: key);

  final String clothType;
  final String colourType;

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Order Detail"),
      ),
      body: SafeArea(
          child: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.girl),
            title: Text("Clothe type is ${widget.clothType}"),
          ),
          ListTile(
            leading: const Icon(Icons.color_lens),
            title: Text("Clothe Colour is ${widget.colourType}"),
          )
        ],
      )),
    );
  }
}
