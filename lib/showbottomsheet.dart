import 'package:flutter/material.dart';

class showbottomsheet extends StatefulWidget {
  const showbottomsheet({Key? key}) : super(key: key);

  @override
  State<showbottomsheet> createState() => _showbottomsheetState();
}

class _showbottomsheetState extends State<showbottomsheet> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("open bottom sheet"),),
      body: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          children: [
            ElevatedButton(onPressed: () {
              showModalBottomSheet(context: context, builder: (context) {
                return InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(height: 250,
                    padding: EdgeInsets.all(10),
                    child: Align(alignment: Alignment.center,child: Text("Bottomsheet opened",style: TextStyle(fontSize: 26),)),
                  ),
                );
              },);
            }, child: Text("Open bottom sheet"))
          ],
        ),
      ),
    );
  }
}
