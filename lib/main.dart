import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("iLundary"),
          actions: const [Icon(Icons.add)],
        ),
        drawer: const Drawer(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 35.0),
            const Center(
              child: Text(
                "My Lundary Data",
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w900),
              ),
            ),
            const YellowBg(),
            Row(
              children: const [
                CompletedOrders(),
                SizedBox(width: 25),
                PendingOrders(),
              ],
            ),
            const SizedBox(height: 30.0),
            const CustomStack()
          ],
        ),
      ),
    );
  }
}

class YellowBg extends StatelessWidget {
  const YellowBg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(30),
      height: 150.0,
      color: Colors.lightBlueAccent,
      child: const Center(
        child: Text(
          "My Orders",
          style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w200),
        ),
      ),
    );
  }
}

class CompletedOrders extends StatelessWidget {
  const CompletedOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 0, left: 30),
      height: 90.0,
      width: MediaQuery.of(context).size.width / 2.5,
      color: Colors.lightBlueAccent,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "41 \n Completed",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w200),
            ),
          ],
        ),
      ),
    );
  }
}

class PendingOrders extends StatelessWidget {
  const PendingOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 0, right: 30),
      height: 90.0,
      width: MediaQuery.of(context).size.width / 2.5,
      color: Colors.lightBlueAccent,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "20 \n Pending",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w200),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomStack extends StatelessWidget {
  const CustomStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 30.0, right: 30.0),
          padding: const EdgeInsets.all(30),
          width: double.infinity,
          color: Colors.lightBlueAccent,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                color: Colors.greenAccent,
                padding: const EdgeInsets.all(20),
                child: const Center(child: Text("Place Order")),
              ),
              const SizedBox(height: 20.0),
              Container(
                width: double.infinity,
                color: Colors.red,
                padding: const EdgeInsets.all(20),
                child: const Center(child: Text("Exit")),
              ),
            ],
          ),
        )
      ],
    );
  }
}
