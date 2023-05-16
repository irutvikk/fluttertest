import 'package:flutter/material.dart';

class setstateandchangevalue extends StatefulWidget {
  const setstateandchangevalue({Key? key}) : super(key: key);

  @override
  State<setstateandchangevalue> createState() => _setstateandchangevalueState();
}

class _setstateandchangevalueState extends State<setstateandchangevalue> {

  int a=10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("setstate and value change"),),
      body: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          children: [
            Align(alignment: Alignment.center,child: Text("$a",style: TextStyle(fontSize: 30),)),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: () {

              a=15;

            }, child: Text("Not Setstated Button")),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: () {

              setState(() {
                a=15;
              });

            }, child: Text("Setstated Button"))
          ],
        ),
      ),
    );
  }
}
