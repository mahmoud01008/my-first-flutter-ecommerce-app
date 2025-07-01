import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter/material.dart';

import 'Rcovery_Screen.dart';





class Otp extends StatelessWidget {
  const Otp({super.key});



  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Column(
          children: [
            SizedBox(height: 50),
            Text("Forgot Password" , style: TextStyle(fontSize: 30)),
            SizedBox(height: 20),
            Text("Please enter The code we sent you"),
            SizedBox(height: 5),
         OtpTextField(
          numberOfFields: 5,
          borderColor: Color(0xFFEA5427),
          showFieldAsBox: true,
          onCodeChanged: (String code) {
            // handle validation if needed
          },
          onSubmit: (String verificationCode) {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Verification Code"),
                  content: Text('Code entered is $verificationCode'),
                );
              },
            );
          },
        ),
            SizedBox(height: 10),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return RcoveryScreen();
              }));
            },style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xffef5329),
            ), child: Text("Verify" , style: TextStyle(
                fontSize: 20,color: Colors.black54 ))
            ),
    ]
      ),
      )
    );
  }
}
