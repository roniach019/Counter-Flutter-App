import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(),
        body: Stack(
          children: [
            Container(),
            Container(
              padding: EdgeInsets.only(left: 35,top: 100, right: 35),
              child: Text(
                  'wellcome\nBack',
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              fillColor: Colors.grey,
                              filled: true,
                              hintText: "Email",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              )
                            ),
                          ),
                          SizedBox(height: 30,),
                          TextField(
                            style: TextStyle(color: Colors.white),
                            obscureText: true,
                            decoration: InputDecoration(
                                fillColor: Colors.grey,
                                filled: true,
                                hintText: "password",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )
                            ),
                          ),
                          SizedBox(height: 30,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: (){
                                  //Navigator.pushNamed(context, MyApp())
                                },
                                child: Text('Sign up'),
                                //textAlign: TextAlign.left,
                              )
                            ],
                          )
                        ],
                      )
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
