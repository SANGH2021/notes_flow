import 'package:flutter/material.dart';
import 'package:notes_flow/screens/add_read_delete_update_page.dart';
class NotesHomePage extends StatelessWidget {
   NotesHomePage({super.key});
  
  final TextEditingController searchNoteTextEditingController =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.purple),
            height: 190,
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                SizedBox(height: 60,),
                Align(alignment: Alignment.topLeft,child: Text('  My Notes',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),)),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    controller: searchNoteTextEditingController , decoration: InputDecoration(
                    filled: true,fillColor: Colors.white,
                    prefixIcon: Icon(Icons.search,color: Colors.grey,size: 35,),
                    hintText: "Search notes", hintStyle: TextStyle(fontSize: 19),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    )

                  ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(backgroundColor: Colors.purple,onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>AddReadDeleteUpdatePage()));
      },shape: CircleBorder(),child: Icon(Icons.add,color: Colors.white,size: 35,),),
      
    );
  }
}
