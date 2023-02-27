import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController number = TextEditingController();
  List<int> tableAns = [];
  int Number = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Table"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
                controller: number,
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Number = int.parse(number.text);
                      for (int i = 1; i <= 10; i++) {
                        tableAns.add(i);
                      }
                    });
                  },
                  child: Text("create")),
              SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      height: 200,
                      width: double.infinity,
                      child: Center(
                        child: ListView.builder(
                          itemCount: tableAns.length,
                          itemBuilder: (context, index) => Text(
                              "${Number}        *          ${index + 1}        =      ${Number * (index + 1)}",
                              style: TextStyle(color: Colors.red)),
                        ),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
