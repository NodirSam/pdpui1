import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static final String id="home_page";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.grey[900]!,
              Colors.grey[500]!,
              Colors.grey[400]!,
            ]
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(height: 30,),
            //#sign up, #welcome
            Padding(
                padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text("Sign Up", style: TextStyle(color: Colors.white, fontSize: 40),),
                  SizedBox(height: 10,),
                  Text("Welcome", style: TextStyle(color: Colors.white, fontSize: 20),),
                ],
              ),
            ),

            SizedBox(height: 20,),

            Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50)),
                  ),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.all(30),
                      child: Column(
                        children: [
                          SizedBox(height: 10,),
                          //#fullname, #email, #phone, #password
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(color: Color.fromRGBO(171, 171, 171, 0.7), blurRadius: 20, offset: Offset(0, 10)),
                              ]
                            ),
                            child: Column(
                              children: [

                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey[200]!)),
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "Fullname",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                    ),
                                  ),
                                ),

                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey[200]!)),
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: "Email",
                                        hintStyle: TextStyle(color: Colors.grey),
                                        border: InputBorder.none
                                    ),
                                  ),
                                ),

                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey[200]!)),
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: "Phone",
                                        hintStyle: TextStyle(color: Colors.grey),
                                        border: InputBorder.none
                                    ),
                                  ),
                                ),

                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey[200]!)),
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: "Password",
                                        hintStyle: TextStyle(color: Colors.grey),
                                        border: InputBorder.none
                                    ),
                                  ),
                                ),
                              ],
                            ),

                          ),
                          SizedBox(height: 30,),

                          //#sign up
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 50),
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.grey[700]!,
                            ),
                            child: Center(
                              child: Text("SignUp", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 18),),
                            ),
                          ),
                          SizedBox(height: 15,),

                          //#Sign Up with SNS
                          Text("Sign Up with SNS", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),),
                          SizedBox(height: 15,),

                          //#facebook, #google, #apple
                          Row(
                            children: [

                              Expanded(
                                  child: Container(
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.blue
                                    ),
                                    child: Center(
                                      child: Text("Facebook", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                    ),
                                  )
                              ),
                              SizedBox(width: 20,),

                              Expanded(
                                  child: Container(
                                    height: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.red
                                    ),
                                    child: Center(
                                      child: Text("Google", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                    ),
                                  )
                              ),
                              SizedBox(width: 20,),

                              Expanded(
                                  child: Container(
                                    height: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.black
                                    ),
                                    child: Center(
                                      child: Text("Apple", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                    ),
                                  )
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
            )
          ],
        )
      ),
    );
  }
}
