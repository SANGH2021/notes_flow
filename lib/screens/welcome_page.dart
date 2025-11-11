
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7F7F7),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Container(height: 55, width: 55, decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.purple
                )
                    ,child: Icon(Icons.book_outlined, color: Colors.white, size: 35,)),
                  SizedBox(width: 10,),
                  Text("NotesFlow", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.purple),)],
              ),
              SizedBox(height: 20,),
              Text("Your thoughts, organised beautifully", style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold, color: Colors.grey.shade800),),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container( width: 400, alignment: Alignment.center, child: Text("Capture ideas, create lists and stay organized with our intuitive notes app. Access your notes anywhere, anytime.", style: TextStyle(fontSize: 18, color: Colors.grey.shade600 ),)),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(height: 300,width: double.infinity,decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),child: Column(
                  children: [
                    SizedBox(height: 15,),
                    Text("Get Started", style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                    SizedBox(height: 15,),
                    Text("Create an account or sign in to continue", style: TextStyle(fontSize: 15, color: Colors.grey.shade600, fontWeight: FontWeight.bold),),
                    SizedBox(height: 15,),
                    ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(backgroundColor: Colors.purple, foregroundColor: Colors.white),child: Text("Create Account")),
                    SizedBox(height: 20,),
                    ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom( ),child: Text("         Sign In        ",style: TextStyle(fontWeight: FontWeight.bold),)),
                    SizedBox(height: 25,),
                    Container( height: 50, width: 300, alignment: Alignment.center, child: Text("By continuing, you agree to our Terms of Service and Privacy Policy", style: TextStyle(fontSize: 17, color: Colors.grey.shade600 ),)),
                  ],
                ),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
