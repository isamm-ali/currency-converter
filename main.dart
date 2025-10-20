import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }
  double result = 0;
  @override
  Widget build(BuildContext context) {
    final textEditingController = TextEditingController();
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(219, 194, 166, 1),
        appBar: AppBar(
          title: const Text("Currency Converter", style: TextStyle(fontWeight: FontWeight.w300,fontSize: 25, color: Color.fromRGBO(153, 116, 74, 1), fontFamily: 'Comfortaa')),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(65, 74, 55, 1),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Container(
               padding: const EdgeInsets.all(10),
               margin: const EdgeInsets.all(25),
               color: Color.fromRGBO(65, 74, 55, 1),
               child:  const Text(
                  "- Convert USD to INR -",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    color: Color.fromRGBO(153, 116, 74, 1),
                  ),
                ),
              ),
             Container(
                  margin: const EdgeInsets.all(6),
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: textEditingController,
                    style: const TextStyle(
                      color: Color.fromRGBO(65, 74, 55, 1),
                    ),
                    decoration: const InputDecoration(
                      hintText: "Enter the amount in USD",
                      hintStyle: TextStyle(
                        color: Color.fromRGBO(65, 74, 55, 1),
                        fontSize: 20,
                        fontWeight: FontWeight.w300
                      ),
                      prefixIcon: Icon(Icons.attach_money, color: Color.fromRGBO(65, 74, 55, 1)),
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(153, 116, 74, 1),
                          width: 4.0,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(65, 74, 55, 1),
                          width: 5.0,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                      ),
                    ),
                    keyboardType: const TextInputType.numberWithOptions(decimal: true),
                  ),
                ),
              TextButton(onPressed: () {
                setState(() {
                  result = (double.parse(textEditingController.text) * 87.95);
                });
                },
                child: const Text("Convert", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromRGBO(153, 116, 74, 1),
                  foregroundColor: Color.fromRGBO(65, 74, 55, 1),
                  padding: const EdgeInsets.all(18),
              )
              ),
              Container(
                  margin: const EdgeInsets.all(36),
                  padding: const EdgeInsets.all(12),
                  width: 500,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(65, 74, 55, 1),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  alignment: Alignment.center,
                  child: Text("INR: ₹$result",
                    style: const TextStyle(color: Color.fromRGBO(153, 116, 74, 1),
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        fontStyle: FontStyle.italic
                  )
              )
              )
            ],
          ),
        ),
      ),
    );
  }
}