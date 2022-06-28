import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  var nameEditingController = TextEditingController();
  var ageEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Page"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
              child: Column(
            children: [
              Text(
                "Welcome to Nasrul page",
                style: TextStyle(color: Colors.red, fontSize: 32),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Text("This is left"), Text("This is right")],
              ), //row
              Text("I hope you like it",
                  style: TextStyle(color: Colors.blue, fontSize: 20)),
              SizedBox(height: 20),
              Image.network(
                  "https://www.tripsavvy.com/thmb/pQm0_qoLMRyvJvOUB88Jon1tRQM=/3560x2670/smart/filters:no_upscale()/where-is-kuala-lumpug-5740492a5f9b58723d520ef4.jpg"),
              SizedBox(height: 20),
              Image.network(
                  "https://www.tripsavvy.com/thmb/pQm0_qoLMRyvJvOUB88Jon1tRQM=/3560x2670/smart/filters:no_upscale()/where-is-kuala-lumpug-5740492a5f9b58723d520ef4.jpg"),
              SizedBox(height: 20),
              Image.asset("images/gambar.jpg"),
              SizedBox(height: 20),
              Text("This is my first app"),
              SizedBox(height: 20),
              TextField(
                controller: nameEditingController,
                decoration: InputDecoration(
                  hintText: "What is your Name?",
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: ageEditingController,
                decoration: InputDecoration(
                  hintText: "How Old are you?",
                  border: OutlineInputBorder(),
                  labelText: 'Age',
                ),
              ),
              TextButton(
                  onPressed: () {
                    Fluttertoast.showToast(
                        msg: "Hello ${nameEditingController.text},"
                        "you are ${ageEditingController.text} years old.",
                        toastLength: Toast.LENGTH_SHORT,
                        // timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0);
                  },
                  child: Text("Press me!"))
            ],
          )),
        ),
      ),
    );
  }
}
