import 'package:blogfrontend/pages/signup.dart';
import 'package:flutter/material.dart';
class Menupg extends StatefulWidget {
  const Menupg({super.key});

  @override
  State<Menupg> createState() => _MenupgState();
}

class _MenupgState extends State<Menupg> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Home"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        width: double.infinity,
        height: 800,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.pink.withOpacity(0.3),
                  Colors.cyanAccent.withOpacity(0.3),
                ]
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "email",
                labelText: "email",
                border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                  hintText: "password",
                  labelText: "password",
                border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 10,),

            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      )

                  ),
                  onPressed: (){
                  },
                  child: Text("signin")),
            ),
            SizedBox(height: 20),
            SizedBox(
                height: 50,
                width: 200,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      )
                  ),
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Addpg()));
                  },
                  child: Text("signup")
                  ,
                ) )],
        ),
      ),
    );
  }
}
