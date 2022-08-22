import 'package:flutter/material.dart';
import 'package:flutter_assignment_2/homepage.dart';

import 'PageTwo.dart';
import 'ThirdPage.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(child: Text('First page')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('This is First Page'),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=> MyHomePage()));
              }, child: Text('Go to HomePage page')),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (_)=> SecondPage()));
                }, child: Text('Go to Second page')),
              // navigator.push bebohar kore back korte pari. kono page theke direct ber hober jonno
              // navigator.pushReplacement bebohar korte hobe.

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
