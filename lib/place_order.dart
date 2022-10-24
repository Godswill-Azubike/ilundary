import 'package:flutter/material.dart';

class PlaceOrder extends StatefulWidget {
  const PlaceOrder({Key? key}) : super(key: key);

  @override
  State<PlaceOrder> createState() => _PlaceOrderState();
}

class _PlaceOrderState extends State<PlaceOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Place Orders")),
      body: SafeArea(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Go Back"),
            ),
            // textField

            const Padding(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email",
                  hintText: 'e.g godswill@gmail.com',
                ),
              ),
            ),

            const SizedBox(height: 30),
            // TextFormField

            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "password",
                  // prefixIcon: Icon(Icons.key),
                  prefix: Text(
                    "₦   ",
                    style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),
            // TextFormField

            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Price (₦)",
                  hintText: "0.00",
                  prefix: Text(
                    "₦   ",
                    style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
