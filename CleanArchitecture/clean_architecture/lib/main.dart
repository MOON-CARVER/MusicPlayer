import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyHomeState();
  }
}

class MyHomeState extends State<MyHomePage> {
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();
  var result = " ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My App'),
        ),
        body: Container(
            color: const Color.fromARGB(255, 166, 137, 246),
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(4),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      controller: no1Controller,
                    ),
                    TextField(
                        keyboardType: TextInputType.number,
                        controller: no2Controller),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                var no1 =
                                    int.parse(no1Controller.text.toString());
                                var no2 =
                                    int.parse(no2Controller.text.toString());

                                var sum = no1 + no2;
                                result = "$sum";
                                setState(() {});
                              },
                              child: Text('ADD')),
                          ElevatedButton(onPressed: () {}, child: Text('SUB')),
                          ElevatedButton(onPressed: () {}, child: Text('MULT')),
                          ElevatedButton(onPressed: () {}, child: Text('DIV')),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(24),
                      child: Text(result, style: new TextStyle(fontSize: 25)),
                    )
                  ],
                ),
              ),
            )));
  }
}
