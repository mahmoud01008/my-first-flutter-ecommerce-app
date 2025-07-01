import 'package:flutter/material.dart';

import 'Login.dart';

class RcoveryScreen extends StatelessWidget {
  const RcoveryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Center(
            child: Column(
                children: [
                  SizedBox(height: 50),
                  Text("Reset Password" , style: TextStyle(fontSize: 30)),
                  SizedBox(height: 20),
                  Text("Create a new password and confirm it"),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.all(33.0),
                    child:  Column(
                      children: [
                        TextField(
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            enabledBorder: OutlineInputBorder(
                              borderSide: Divider.createBorderSide(context),
                              borderRadius: BorderRadius.circular(10),

                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),

                            ),
                            fillColor: Color(0xffc5c6ca),
                            filled: true,
                            hintText: "Enter your password",
                            labelText: "Password",
                            contentPadding: EdgeInsets.all(10),
                          ),
                        ),
                        SizedBox(height: 10),
                        TextField(
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            enabledBorder: OutlineInputBorder(
                              borderSide: Divider.createBorderSide(context),
                              borderRadius: BorderRadius.circular(10),

                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),

                            ),
                            fillColor: Color(0xffc5c6ca),
                            filled: true,
                            hintText: "Enter your password again",
                            labelText: "Confirm Password",
                            contentPadding: EdgeInsets.all(10),
                          ),
                        ),
                      ],
                    ),


                  ),
                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return Login();
                    }));
                  },style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffea5427),
                  ), child: Text("Reset Password" , style: TextStyle(
                      fontSize: 20,color: Colors.black54 ))
                  )


                    ],


            )
        )
    );
  }
}
