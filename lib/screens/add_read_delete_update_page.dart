import 'package:flutter/material.dart';
class AddReadDeleteUpdatePage extends StatelessWidget {
   AddReadDeleteUpdatePage({super.key});

   final TextEditingController noteTitleTextEditingController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 50,),
          Text("Create Note", style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.purple,
          ),),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Container(
                            height: 500,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white
              ),
              child: Column(children: [
                TextField(
                  controller: noteTitleTextEditingController,
                  decoration: InputDecoration(
                      hintText: "Note Title" , hintStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.grey)
                  ,),
                ),
                SizedBox(height: 50,),
                TextField(
                  controller: noteTitleTextEditingController,
                  decoration: InputDecoration(
                      hintText: "Start typing your note" , hintStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.grey)
                  ),
                ),
              ],)
            ),
          )
        ],),
      ),

    );
  }
}
