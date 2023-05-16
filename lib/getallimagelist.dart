import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class getallimagelist extends StatefulWidget {
  const getallimagelist({Key? key}) : super(key: key);

  @override
  State<getallimagelist> createState() => _getallimagelistState();
}

class _getallimagelistState extends State<getallimagelist> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getimages();
  }
  var imagelist;
  Future getimages() async {
    // >> To get paths you need these 2 lines
    final manifestContent = await rootBundle.loadString('AssetManifest.json');

    final Map<String, dynamic> manifestMap = json.decode(manifestContent);
    // >> To get paths you need these 2 lines

    final imagePaths = manifestMap.keys
        .where((String key) => key.contains('Images/'))
        .where((String key) => key.contains('.webp'))
        .toList();

    setState(() {
      imagelist = imagePaths;
      print("===$imagelist");

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("open bottom sheet"),
      ),
      body: Container(margin: EdgeInsets.all(10),
        child: Column(

        ),
      ),
    );
  }
}
