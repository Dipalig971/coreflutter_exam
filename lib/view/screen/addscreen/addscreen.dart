import 'package:coreflutter_exam/untils/variable.dart';
import 'package:flutter/material.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({super.key});

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text("StudentApp",style: TextStyle(color: Colors.white),),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30,),
            CircleAvatar(
              backgroundImage: AssetImage('assets/image/s1.jpg'),
              radius: 80,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50,left: 20,right: 20),
              child: TextFormField(
                controller: txtname,
                decoration: const InputDecoration(
                  label:Text('Enter Name ',style: TextStyle(fontSize: 20),),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Colors.grey,width: 2)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.grey,width: 2)
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40,left: 20,right: 20),
              child: TextFormField(
                controller: txtgrid,
                decoration: const InputDecoration(
                    label:Text('Enter GRId ',style: TextStyle(fontSize: 20),),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Colors.grey,width: 2)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Colors.grey,width: 2)
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40,left: 20,right: 20),
              child: TextFormField(
                controller: txtstandard,
                decoration: const InputDecoration(
                    label:Text('Enter Standard ',style: TextStyle(fontSize: 20),),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Colors.grey,width: 2)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Colors.grey,width: 2)
                    ),
        
                ),
              ),
            ),
            const SizedBox(height: 100,),
            TextButton(onPressed: () {
             setState(() {
               Navigator.of(context).pop();
               student.add(student[index!]);
             });
            }, child: Container(
              height: 60,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(15)
              ),
              child: const Center(
                child: Text('Submit',style: TextStyle(
                  color: Colors.white,fontSize: 22
                ),),
              ),
            ))
          ],
        ),
      ),
    );
  }
}

