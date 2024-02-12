import 'dart:math';

import 'package:flutter/material.dart';
class Addpg extends StatefulWidget {
  const Addpg({super.key});

  @override
  State<Addpg> createState() => _AddpgState();
}

class _AddpgState extends State<Addpg> {
  final TextEditingController name=new TextEditingController();
  final TextEditingController age=new TextEditingController();
  final TextEditingController address=new TextEditingController();
  final TextEditingController pin=new TextEditingController();
  final TextEditingController phone=new TextEditingController();
  final TextEditingController email=new TextEditingController();
  final TextEditingController password=new TextEditingController();

  void sendview()
  {
    print("name:"+name.text);
    print("address:"+address.text);
    print("age:"+age.text);
    print("phone:"+phone.text);
    print("pincode:"+pin.text);
    print("email:"+email.text);
    print("password:"+password.text);
  }





  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text("Add page"),
        ),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: 800,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Colors.pink.withOpacity(0.3),
                      Colors.white.withOpacity(0.3),

                    ]
                )
            ),
            child: Column(
                children: [
                  TextField(
                    controller: name,
                    decoration: InputDecoration(
                      hintText: "Name",
                      labelText: "Name",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  TextField(
                    controller: age,
                    decoration: InputDecoration(
                      hintText: "age",
                      labelText: "age",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    controller: address,
                    decoration: InputDecoration(
                      hintText: "address",
                      labelText: "address",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    controller: phone,
                    decoration: InputDecoration(
                      hintText: "phone no",
                      labelText: "phone no",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  TextField(
                    controller: pin,
                    decoration: InputDecoration(
                      hintText: "pincode",
                      labelText: "pincode",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    controller: email,
                    decoration: InputDecoration(
                      hintText: " email",
                      labelText: " email",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    controller: password,
                    decoration: InputDecoration(
                      hintText: "password",
                      labelText: " password",
                      border: OutlineInputBorder(),
                    ),
                  ),

                  SizedBox(height: 10,),
                  SizedBox(
                    height: 50,
                    width: 200,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amberAccent,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          )
                      ),

                      onPressed: (){
                        sendview();
                        },
                      child:Text( "Submit")
                      ,
                    ),
                  ),
                  SizedBox(height: 10,),
                  SizedBox(
                    height: 50,
                    width: 200,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amberAccent,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                          )
                      ),

                      onPressed: (){
                        Navigator.pop(context);
                      },
                      child:Text( "back")
                      ,
                    ),
                  ),]
            ),
          ),
        ),
      ),
    );
  }
}