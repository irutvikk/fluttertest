import 'package:flutter/material.dart';
import 'package:fluttertest/modalclass.dart';

class usemodalclass extends StatefulWidget {
  const usemodalclass({Key? key}) : super(key: key);

  @override
  State<usemodalclass> createState() => _usemodalclassState();
}

class _usemodalclassState extends State<usemodalclass> {
  int a=10;
  int b=20;
  int? ans;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("modal class use"),),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
                alignment: Alignment.center,
                child: Text("a = $a",
                  style: TextStyle(fontSize: 20),
                ),
            ),
            SizedBox(height: 10,),
            Container(
              alignment: Alignment.center,
              child: Text("b = $b",
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 20,),
            Text("$ans",style: TextStyle(fontSize: 30)),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: () {
              setState(() {
                ans = modalclass().sum(a, b);
              });
            }, child: Text("Get data from modal class"))
          ],
        ),
      ),
    );
  }
}
