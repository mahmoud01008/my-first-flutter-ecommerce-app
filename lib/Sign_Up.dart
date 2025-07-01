import 'package:flutter/material.dart';
import 'Login.dart';
class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(

        child: Center(
            child: SingleChildScrollView(
           child: Column(
                children: [
                  SizedBox(height: 10),
                  Image.asset("assets/images/freed.png"),
                  SizedBox(height: 10),
                  Text("Create an account" , style: TextStyle(fontSize: 20)),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.all(33.0),
                    child: Column(
                      children: [
                        TextField(

                          keyboardType: TextInputType.name,
                          obscureText: false,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            enabledBorder: OutlineInputBorder(
                              borderSide: Divider.createBorderSide(context),
                              borderRadius: BorderRadius.circular(10),

                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),

                            ),
                            fillColor: Color(0xffc5c6ca),
                            filled: true,
                            hintText: "Enter your name",
                            labelText: "Name",
                            contentPadding: EdgeInsets.all(10),
                          ),
                        ),
                        SizedBox(height: 10),
                        TextField(
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
                        SizedBox(height: 10),
                        TextField(
                          keyboardType: TextInputType.emailAddress,
                          obscureText: false,
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
                    backgroundColor: Color(0xffef5329),
                  ), child: Text("Sign Up" , style: TextStyle(
                      fontSize: 20,color: Colors.black54 ))
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account?"),
                      TextButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context){
                        return Login();
                      }));}, child: Text("Sign In" , style: TextStyle(
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
