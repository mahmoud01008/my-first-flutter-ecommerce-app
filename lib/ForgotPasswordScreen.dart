
import 'package:flutter/material.dart';
import 'package:talapat/OTP.dart';
import 'Forgot_pass_using_phone.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Column(
          children: [
            SizedBox(height: 50),
            Text("Forgot Password" , style: TextStyle(fontSize: 30)),
            SizedBox(height: 20),
            Text("Please enter your email address"),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(33.0),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  enabledBorder: OutlineInputBorder(
                    borderSide: Divider.createBorderSide(context),
                    borderRadius: BorderRadius.circular(10),

                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),

                  ),
                  fillColor: Color(0xffc5c6ca),
                  filled: true,
                  hintText: "Enter your email",
                  labelText: "Email",
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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text("OR"),
              ],
            ),
            TextButton(onPressed: (
                ){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return ForgotPassUsingPhone ();
              }));
            },
                child: Text("Verify using phone number" , style: TextStyle(
                fontSize: 15,color: Colors.black
            ),
            ))
          ],

        )
          ]
        )
      )

    );
  }
}
