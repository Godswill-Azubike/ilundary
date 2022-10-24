import 'package:flutter/material.dart';
import 'package:ilundary/place_order.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("iLundary"),
      ),
      drawer: const Drawer(),
      body: Column(
        children: <Widget>[
          const SizedBox(height: 20.5),
          // first text widget
          const Center(
            child: Text(
              "My Lundary Data",
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w800, color: Colors.blue),
            ),
          ),

          // container widget that has a center widget inside
          const MyOrder(),

          // row widget that has two containers
          Row(
            children: const [
              SizedBox(width: 25.0),
              StatData(
                textdata: "42 \nCompleted",
                customColor: Colors.purple,
              ),
              SizedBox(width: 25.0),
              StatData(
                textdata: "20 \nPending",
                customColor: Colors.pink,
              ),
            ],
          ),

          // stack widget that has a column containing container with center widget
          Stack(
            children: [
              Container(
                width: double.infinity,
                color: Colors.blue,
                padding: const EdgeInsets.all(25.0),
                margin: const EdgeInsets.only(left: 25.0, top: 30.0, right: 25.0),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const PlaceOrder()),
                        );
                      },
                      child: const StackBtn(customColor: Colors.teal, text: "Place Order"),
                    ),
                    const SizedBox(height: 10.0),
                    const StackBtn(customColor: Colors.red, text: "Exit"),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class MyOrder extends StatelessWidget {
  const MyOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30.0, left: 25.0, right: 25.0),
      height: 150.0,
      width: double.infinity,
      color: Colors.blue,
      child: Center(
        child: Text(
          "My Orders".toUpperCase(),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 25.0,
          ),
        ),
      ),
    );
  }
}

class StatData extends StatelessWidget {
  const StatData({super.key, required this.textdata, required this.customColor});
  final String textdata;
  final Color customColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 175.0,
      margin: const EdgeInsets.only(top: 30.0),
      color: customColor,
      child: Center(
        child: Text(
          textdata,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class StackBtn extends StatelessWidget {
  const StackBtn({super.key, required this.customColor, required this.text});
  final Color customColor;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      color: customColor,
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
