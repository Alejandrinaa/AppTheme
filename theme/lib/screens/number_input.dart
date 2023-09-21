import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  MyHomePageState createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  final TextEditingController controller = TextEditingController();
  int counter = 0;

  @override
  void initState() {
    super.initState();
    controller.text = counter.toString();
  }

  void incrementCounter() {
    setState(() {
      counter++;
      controller.text = counter.toString();
    });
  }

  void decrementCounter() {
    setState(() {
      if (counter > 0) {
        counter--;
        controller.text = counter.toString();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' Text Field Number '),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  onPressed: decrementCounter,
                  icon: const Icon(Icons.remove),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 200,
                    child: TextField(
                      textAlign: TextAlign.center,
                      controller: controller,
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: incrementCounter,
                  icon: const Icon(Icons.add),
                ),
                const SizedBox(width: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
