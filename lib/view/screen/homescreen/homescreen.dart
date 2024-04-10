
import 'package:coreflutter_exam/untils/variable.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'StudentApp',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {
          Navigator.of(context).pushNamed('/add');
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Column(
        children: List.generate(3, (index) => Box(index))
      ),
    );
  }

  Padding Box(int index,String name) {
    return Padding(
          padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
          child: Container(
            height: 90,
            width: 500,
            decoration: BoxDecoration(
                color: const Color(0xffECECEC),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                const CircleAvatar(
                    backgroundImage:AssetImage('assets/image/s1.jpg',),
                  radius: 30,
                ),
                const Text(
                  '1',
                  style: TextStyle(color: Colors.black, fontSize: 22),
                ),
                 Column(
                  children: [
                     Padding(
                       padding: EdgeInsets.only(top: 10,left: 15),
                       child: Text(
                         'Dipali',
                        style: TextStyle(color: Colors.black, fontSize: 22),
                                             ),
                     ),
                     Text(
                      '12',
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    ),
                  ],
                ),
                //ListView.builder(itemBuilder: (context, index) =>student[index] ,),
                Padding(
                  padding: const EdgeInsets.only(left: 130),
                  child: IconButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                  content: Container(
                                      height: 200,
                                      child: Column(
                                        children: [
                                          TextFormField(
                                            controller: txtname,
                                            decoration: const InputDecoration(
                                                label: Text('Enter name')),
                                          ),
                                          TextFormField(
                                            controller: txtgrid,
                                            decoration: const InputDecoration(
                                                label: Text('Enter GRID')),
                                          ),
                                          TextFormField(
                                            controller: txtstandard,
                                            decoration: const InputDecoration(
                                                label: Text('Enter STD')),
                                          ),
                                        ],
                                      )),
                                  actions: [
                                    TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: const Text(
                                          "cancel",
                                          style:
                                              TextStyle(color: Colors.black),
                                        )),
                                    TextButton(
                                        onPressed: () {
                                            student.add(index);
                                          Navigator.of(context).pop();
                                        },
                                        child: const Text(
                                          "Udate",
                                          style:
                                              TextStyle(color: Colors.black),
                                        ))
                                  ],
                                ));
                      },
                      icon: const Icon(Icons.edit)),
                ),
                IconButton(
                    onPressed: () {
                      setState(() {
                        student.removeAt(student[index]);
                      });
                    },
                    icon: const Icon(Icons.delete))
              ],
            ),
          ),
        );
  }
}
