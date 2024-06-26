import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({super.key});

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/login.png'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 35, top: 130),
              child: const Text(
                'Create a\nAccount',
                style: TextStyle(color: Colors.black, fontSize: 33),
              ),
            ),
            SingleChildScrollView(
              child:Container(

                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5,
                    right: 35,
                    left: 35),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: 'Name',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),

                    const SizedBox(
                      height: 30,
                    ),

                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: 'Email',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),

                    const SizedBox(
                      height: 30,
                    ),

                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: 'Password',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),

                    const SizedBox(
                      height: 30,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Login',
                          style: TextStyle(
                              fontSize: 27, fontWeight: FontWeight.w700),
                        ) ,
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Color(0xff4c505b),
                          child: IconButton(
                            color: Colors.white,
                            onPressed: (){},
                            icon: Icon(Icons.arrow_forward),
                          ),
                        )
                      ],
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        TextButton(onPressed: (){
                          Navigator.pushNamed(context, 'login');
                        },
                            child: Text('Sign in',

                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 18,
                                color: Color(0xFFFAF8F8),

                              ),)),



                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
