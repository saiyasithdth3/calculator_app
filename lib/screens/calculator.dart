import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyState();
  }
}

class MyState extends State<Calculator> {
  String equation = '';//sang to pae thao kub
  String result = '';//sang to pae phon lub
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.black,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(20, 120, 20, 60),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.centerRight,//hai mun sit pai u thang khua
                        padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                        child: Text(
                          equation,
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,//hai mun sit pai u thang khua
                        padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                        child: Text(
                          result,
                          style: TextStyle(fontSize: 30),
                        ),
                      )
                    ],
                  ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Padding(padding: EdgeInsets.all(10),
                child: TextButton(
                  onPressed: null,
                  child: Text("AC",style: TextStyle(
                    fontSize: 32,
                    height: 1.5,
                    color: Colors.orangeAccent,
                  ),
                  ),
                 ),
                ),

                Padding(padding: EdgeInsets.all(10),
                child: TextButton(
                  onPressed: null,
                  child: Text("C",style: TextStyle(
                    fontSize: 32,
                    height: 1.5,
                    color: Colors.orangeAccent,
                  ),
                  ),
                 ),
                ),

                Padding(padding: EdgeInsets.all(10),
                child: TextButton(
                  onPressed: null,
                  child: Text("%",style: TextStyle(
                    fontSize: 32,
                    height: 1.5,
                    color: Colors.orangeAccent,
                  ),
                  ),
                 ),
                ),

                ],
              )
            ],
          ),
        ),

      ),
    );
  }
}
