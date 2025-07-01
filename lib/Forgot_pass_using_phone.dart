import 'package:flutter/material.dart';

import 'OTP.dart';

class ForgotPassUsingPhone extends StatelessWidget {
  const ForgotPassUsingPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Center(
            child: Column(
                children: [
                  SizedBox(height: 50),
                  Text("Forgot Password" , style: TextStyle(fontSize: 30)),
                  SizedBox(height: 20),
                  Text("Please enter your Phone number"),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.all(33.0),
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      obscureText: false,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.phone),
                        enabledBorder: OutlineInputBorder(
                          borderSide: Divider.createBorderSide(context),
                          borderRadius: BorderRadius.circular(10),

                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),

                        ),
                        fillColor: Color(0xffc5c6ca),
                        filled: true,
                        hintText: "Enter your phone number",
                        labelText: "phone number",
                        contentPadding: EdgeInsets.all(10),
                      ),
                    ),
                  ),
                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return Otp();
                    }));
                  }, style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffea5427),
                  ),
                      child: Text("Send code" , style: TextStyle(
                          fontSize: 20,color: Colors.black54 ))
                  ),

                ]
            )
        )

    );
  }
}
