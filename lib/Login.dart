import 'package:flutter/material.dart';
import 'ForgotPasswordScreen.dart';



import 'Navigation.dart';
import 'Sign_Up.dart';


class Login extends StatelessWidget {
  const Login({super.key});
  @override
  Widget build(BuildContext context) {
    return Material(

      child: Center(
        child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/freed.png"),
            SizedBox(height: 10),
            Text("Welcome Back!" , style: TextStyle(fontSize: 30)),
            SizedBox(height: 20),
            Text("Please login to continue"),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(33.0),
              child: Column(
                children: [
                  TextField(
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
                      hintText: "Enter your password",
                      labelText: "Password",
                      contentPadding: EdgeInsets.all(10),
                    ),
                  ),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return ForgotPassword();
                    }));
                  }, child: Text("Forgot Password?" , style: TextStyle(
                    fontSize: 15,color: Colors.black
                  ),))
                ],
              ),
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return Navigation();
              }));
            }, style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xffea5427),
            ),
                child: Text("Login" , style: TextStyle(
            fontSize: 20,color: Colors.black54 ))
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an account?"),
              TextButton(onPressed: (
                  ){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return SignUp();
                }));
              }, child: Text("Sign Up" , style: TextStyle(
                fontSize: 15,color: Colors.black
              ),
              ))
            ],

          )
          ]

          )
        ),
        )

    );
  }
}
