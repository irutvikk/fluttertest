import 'package:flutter/material.dart';
import 'package:fluttertest/getallimagelist.dart';
import 'package:fluttertest/setstate_and_change_value.dart';
import 'package:fluttertest/showbottomsheet.dart';
import 'package:fluttertest/usemodalclass.dart';

void main(){
//runApp(MaterialApp(home: mainclass(),));
runApp(MaterialApp(home: setstateandchangevalue(),));
//runApp(MaterialApp(home: showbottomsheet(),));
//runApp(MaterialApp(home: usemodalclass(),));
//runApp(MaterialApp(home: getallimagelist(),));
}
class mainclass extends StatefulWidget {
  const mainclass({Key? key}) : super(key: key);

  @override
  State<mainclass> createState() => _mainclassState();
}

class _mainclassState extends State<mainclass> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  bool usernametext=false;
  bool passwordtext=false;

  String valuesubmitted = "";
  String usernameerror = "";
  String passworderror = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Textfield with error"),),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                controller: username,
                autofocus: false,
                decoration: InputDecoration(
                  labelText: "Enter Name",
                  errorText: usernametext ? usernameerror : null,
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.pinkAccent),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: TextField(
                controller: password,
                autofocus: false,
                decoration: InputDecoration(
                  labelText: "Enter Password",
                  errorText: passwordtext ? passworderror : null,
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
            SizedBox(height: 80,),
            Text("$valuesubmitted"),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: () {
              String usernamee = username.text;
              String passwordd = password.text;
               usernametext=false;
               passwordtext=false;

               setState(() {
                 if(usernamee.isEmpty && passwordd.isEmpty){
                   usernametext = true;
                   usernameerror="Username cannot be empty";
                   passwordtext = true;
                   passworderror="Password can not be empty";

                 }
                 else if(usernamee.isEmpty)
                   {
                     usernametext = true;
                     usernameerror="Enter Username";
                   }
                 else if(passwordd.isEmpty)
                 {
                   passwordtext = true;
                   passworderror="Enter Password";
                 }
                 else{
                   setState(() {
                     valuesubmitted = "Data sent";
                   });
                 }
               });

            }, child: Text(" Submit "))
          ],
        ),
      ),
    );
  }
}
