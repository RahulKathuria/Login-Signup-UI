import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/login.png'),fit: BoxFit.fill
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body:Stack(children: [
          Container(
            padding: EdgeInsets.only(left: width*0.1,top: height*0.2),
            child: Text("Welcome\nBack",style: TextStyle(
              fontSize: 33,color: Colors.white
            ),),
          ),
          SingleChildScrollView(
                      child: Container(
              padding: EdgeInsets.only(top: height*0.5,left: width*0.1,right:width*0.1),
              child:Column(
                children: [
                  TextField(decoration: InputDecoration(
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    hintText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),),
                  SizedBox(
                    height:height*0.05
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),),
                ],
              )
            ),
          )
        ]),
        ),
    );
  }
}
