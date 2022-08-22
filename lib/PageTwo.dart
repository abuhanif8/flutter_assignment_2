import 'package:flutter/material.dart';
import 'package:flutter_assignment_2/homepage.dart';

import 'PageOne.dart';
import 'ThirdPage.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(child: Text('Second page')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('This is Second Page'),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=> MyHomePage()));
              }, child: Text('Go to Home page')),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=> FirstPage()));
              }, child: Text('Go to First page')),

              SizedBox(
                height: 30,
              ),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=> ThirdPage()));
              }, child: Text('Go to Third page')),

            ],
          ),
        ),
      ),
    );
  }
}
