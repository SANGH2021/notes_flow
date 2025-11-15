import 'package:flutter/material.dart';

class AddReadDeleteUpdatePage extends StatelessWidget {
  AddReadDeleteUpdatePage({super.key});

  final TextEditingController noteTitleTextEditingController =      TextEditingController();
  final TextEditingController noteDescTextEditingController =      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50),
            Text(
              "Create Note",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.purple,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                height: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: noteTitleTextEditingController,
                        decoration: InputDecoration(
                          hintText: "Note Title",
                          hintStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: noteDescTextEditingController,
                        keyboardType: TextInputType.multiline,
                        maxLines: 15,
                        decoration: InputDecoration(
                          border: InputBorder.none,

                          hintText: "Start typing your note",
                          hintStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(onTap: (){},
                  child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blue),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.save_sharp, color: Colors.white),
                        ),
                        SizedBox(width: 3),
                        Text(
                          "Save Note",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(onTap: (){},
                  child: Container(
                    height: 50,
                    width: 120,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.red),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.cancel_outlined, color: Colors.white),
                        ),
                        SizedBox(width: 3),
                        Text(
                          "Cancel",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
