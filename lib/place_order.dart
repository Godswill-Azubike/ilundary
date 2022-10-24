import 'package:flutter/material.dart';
import 'package:ilundary/order_details.dart';

class PlaceOrder extends StatefulWidget {
  const PlaceOrder({Key? key}) : super(key: key);

  @override
  State<PlaceOrder> createState() => _PlaceOrderState();
}

class _PlaceOrderState extends State<PlaceOrder> {
  final TextEditingController colourType = TextEditingController();
  final TextEditingController clothType = TextEditingController();
  final TextEditingController price = TextEditingController();
  final TextEditingController quantity = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  // final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Place Orders")),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // TextFormField
              Container(
                color: Colors.lightBlue[200],
                width: double.infinity,
                padding: const EdgeInsets.only(left: 10.0, top: 20.0, bottom: 20.0, right: 10.0),
                margin: const EdgeInsets.fromLTRB(20.0, 25.0, 20.0, 10.0),
                child: const Text(
                  "Enter the details of your Laundry Order",
                  style: TextStyle(fontSize: 16.0),
                ),
              ),

              const SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (value) {
                          if (value == "") {
                            return "Cloth type required";
                          }
                          if (value!.length < 3) {
                            return "must be greater than 3";
                          }
                          return null;
                        },
                        controller: clothType,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Cloth type",
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      TextFormField(
                        controller: colourType,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Cloth colour",
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      TextFormField(
                        controller: price,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Price",
                          prefixText: "₦ ",
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      TextFormField(
                        controller: quantity,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: "Quantity",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    print("Cloth type ${clothType.text}");
                    print(colourType.text);
                    print(price.text);
                    print(quantity.text);

                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return OrderDetails(clothType: clothType.text, colourType: colourType.text);
                      }),
                    );
                  }
                },
                child: const Text("Proceed"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
