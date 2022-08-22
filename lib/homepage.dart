import 'dart:ui';

import 'package:flutter/material.dart';

import 'PageOne.dart';
import 'PageTwo.dart';
import 'ThirdPage.dart';

class MyHomePage extends StatefulWidget {
   MyHomePage({Key? key}) : super(key: key);


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   var _nameController = TextEditingController();

   var _emailController = TextEditingController();

  var _passwordController = TextEditingController();

  final _formkey = GlobalKey<FormState>();
  bool value = true;


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

        leading: Icon(Icons.flag_outlined),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 20,left:10,),
            child: Text('Bangladesh'),
          ),
        ],

        title: Center(child: Text('My AppBar')),

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=> print(_nameController.text),
        child: Icon(Icons.add_box_outlined),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              TextField(


                controller: _nameController,
                decoration: InputDecoration(
                  hintText: "Full Name",
                  hoverColor: Colors.blue,

                ),
              ),
              TextFormField(

                controller: _emailController,
                decoration: InputDecoration(

                  hintText: "Enter Your Email",
                ),


              ),
              TextFormField(
                autovalidateMode: AutovalidateMode.always,
                validator: (value){
                  if (value!.isEmpty){
                    return "You cant empty this field";
                  } else if (value.length<8){
                    return "Character must be more than 8";
                  }
                },

                obscureText: value,
                controller: _passwordController,
                decoration: InputDecoration(

                  hintText: "Enter Your Password",
                  label: Text("Password"),
                  suffix: IconButton(
                      onPressed: (){
                        setState(() {
                          value =! value;
                          if (_formkey.currentState!.validate()) {
                        print("Validation Completed");

                        }
                        }
                        );
                      },
                      icon: value ==true ? Icon(Icons.remove_red_eye)
                          : Icon(Icons.add_box),
                  )
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(child: ElevatedButton(onPressed: (){}, child: Text("Sign In"))),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=> FirstPage()));
                  }, child: Text("Page-1")),
                  SizedBox(
                    width: 30,
                  ),
        ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (_)=> SecondPage()));
        }, child: Text("Page-2")),
                  SizedBox(
                    width: 30,
                  ),
                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=> ThirdPage()));
                  }, child: Text("Page-3")),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
