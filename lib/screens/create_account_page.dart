import 'package:flutter/material.dart';
import 'package:notes_flow/screens/sign_in_page.dart';

class CreateAccountPage extends StatelessWidget {
  CreateAccountPage({super.key});

  final TextEditingController fullNameTextEditingController = TextEditingController();
  final TextEditingController eMailAddressTextEditingController =      TextEditingController();
  final TextEditingController passwordTextEditingController =      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F7F7),
      appBar: AppBar(
        backgroundColor: Color(0xFFF7F7F7),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.purple,
              ),
              child: Icon(Icons.book_outlined, color: Colors.white, size: 25),
            ),
            SizedBox(width: 10),
            Text(
              "NotesFlow",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              Text(
                '  Create Your Account',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 560,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 15),
                        Text(
                          "Let's get Started",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Enter your details to create your account",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey.shade600,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 15),
                        Text("  Full Name*"),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            controller: fullNameTextEditingController,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.person_outline,
                                color: Colors.grey,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              hintText: "John Doe",
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text("  Email Address*"),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            controller: eMailAddressTextEditingController,
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
                        SizedBox(height: 10,),

                        Container(alignment: Alignment.topLeft,child: Text("  Password")),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            controller: passwordTextEditingController,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.lock_outline,
                                color: Colors.grey,
                              ),
                              suffixIcon: Icon(Icons.visibility,color: Colors.grey,),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              hintText: "********",
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),

                        SizedBox(height: 1),
                        Text('   We will send you a verification email', style: TextStyle(fontSize: 12),),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInPage()));
                          },child: Container(alignment: Alignment.center,height:50, decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.purple),child: Text("Continue", style: TextStyle(color: Colors.white, fontSize: 20),),)),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Already have an account?',style: TextStyle(fontWeight: FontWeight.bold),),
                            SizedBox(width: 2),
                            InkWell(onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>SignInPage()));
                            },
                              child: Text(
                                'Sign in',
                                style: TextStyle(fontWeight: FontWeight.bold,color: Colors.purple),
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
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
