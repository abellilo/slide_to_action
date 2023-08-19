import 'package:flutter/material.dart';
import 'package:slide_to_confirm/slide_to_confirm.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _counter = 0;

  void confirm() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.blueAccent.withOpacity(0.5),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Center(
                child: Text(
                  _counter.toString(),
                  style: TextStyle(
                    fontSize: 38,
                    color: Colors.white,
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 50, bottom: 100),
                  child: ConfirmationSlider(
                    // stickToEnd: true,
                    sliderButtonContent: Icon(Icons.account_balance_wallet_outlined,color: Colors.white,),
                    foregroundColor: Colors.deepPurple.shade200,
                    backgroundColorEnd: Colors.pink.shade200,
                    text: "Pay",
                    onConfirmation: () => confirm(),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

