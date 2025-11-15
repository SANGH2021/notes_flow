import 'package:flutter/material.dart';
import 'package:notes_flow/screens/create_account_page.dart';
import 'package:notes_flow/screens/notes_home_page.dart';

class SignInPage extends StatelessWidget {
   SignInPage({super.key});

  final TextEditingController emailAddressTextEditingController= TextEditingController();
  final TextEditingController passwordTextEditingController= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F7F7),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.purple,
                    ),
                    child: Icon(
                      Icons.book_outlined,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "NotesFlow",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Welcome back to your notes",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade800,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: 400,
                  alignment: Alignment.center,
                  child: Text(
                    "Sign in to access your thoughts, ideas and organized notes from anywhere.",
                    style: TextStyle(fontSize: 18, color: Colors.grey.shade600),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 700,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 15),
                      Text(
                        "Sign in",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        "Enter your credentials to access your account",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10)
                          ),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.sports_volleyball,size: 30,),
                              SizedBox(width: 15,),
                              Text('Continue with Google',style: TextStyle(fontSize: 17),),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 1),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10),
                            color: Colors.black
                          ),

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.apple_outlined,size: 30,color: Colors.white,),
                              SizedBox(width: 15,),
                              Text('Continue with Apple',style: TextStyle(fontSize: 17,color: Colors.white),),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 20,child: Text("---------- Or continue with email ----------",style: TextStyle(fontSize: 17,color: Colors.grey,fontWeight: FontWeight.bold,),),),
                      Container(alignment: Alignment.topLeft,child: Text("  Email Address*")),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: emailAddressTextEditingController,
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.email_outlined,
                              color: Colors.grey,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: "you@example.com",
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(alignment: Alignment.topLeft,child: Text("  Password")),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: passwordTextEditingController,
                          decoration: InputDecoration(
                            suffixIcon: Icon(Icons.visibility,color: Colors.grey,),
                            prefixIcon: Icon(
                              Icons.lock_outline,
                              color: Colors.grey,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: "********",
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>NotesHomePage()));
                        },child: Container(alignment: Alignment.center,height:50, decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.purple),child: Row(mainAxisAlignment:MainAxisAlignment.center,children: [Text("Sign in", style: TextStyle(color: Colors.white, fontSize: 20),), Icon(Icons.keyboard_arrow_right_outlined,color: Colors.white,)]),)),
                      ),
                      
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Do not have an account?',style: TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(width: 2),
                          InkWell(onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateAccountPage()));
                          },
                            child: Text(
                              'Create account',
                              style: TextStyle(fontWeight: FontWeight.bold,color: Colors.purple),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:10 ),
                        child: Row(children: [
                          Icon(Icons.lock),
                          SizedBox(width: 30,),
                          Text("Your data is encrypted and secure")
                        ],),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
