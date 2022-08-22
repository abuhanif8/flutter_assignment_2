import 'package:flutter/material.dart';
import 'package:flutter_assignment_2/PageTwo.dart';

import 'PageOne.dart';
import 'homepage.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(child: Text('Third page')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('This is Thirs Page'),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>SecondPage()));
              }, child: Text('go to Second Page')),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (_)=> MyHomePage()));
                }, child: Text('Go to HomePage page')),

              SizedBox(
                height: 30,
              ),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=> FirstPage()));
              }, child: Text('Go to First page')),

            ],
          ),
        ),
      ),
    );
  }
}
