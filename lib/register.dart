import 'package:flutter/material.dart';
import 'package:flutter_application_5/login.dart';
import 'package:flutter_application_5/share/cubit.dart';
import 'package:flutter_application_5/share/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cat.dart';
import 'com.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isPass = true;
  final emailcontroler = TextEditingController();
  final usercontroler = TextEditingController();
  final passcontroler = TextEditingController();
  final passconfcontroler = TextEditingController();
  final phonecontroler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocBuilder<LoginCubit, Loginstate>(
      builder: (context, state) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(children: [
              ClipPath(
                clipper: Myclipp(),
                child: Stack(children: [
                  Container(
                    color: Colors.deepPurple,
                    height: size.height / 3,
                    child: Center(
                      child: Text(
                        'Register',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: size.height / 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Positioned(
                      top: size.height / 25,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back),
                        color: Colors.white,
                      ))
                ]),
              ),
              SizedBox(
                height: size.height / 13,
              ),
              MyTextF(
                  labeltext: 'User Name',
                  prfx: Icons.person,
                  controller: usercontroler,
                  validator: (value) {
                    if (value!.isEmpty) print('Enter User Name');
                  },
                  typ: TextInputType.text),
              MyTextF(
                  labeltext: 'E-mail',
                  prfx: Icons.email,
                  controller: emailcontroler,
                  validator: (value) {
                    if (value!.isEmpty) print('Enter Your E-mail');
                  },
                  typ: TextInputType.emailAddress),
              MyTextF(
                  labeltext: 'Phone',
                  controller: phonecontroler,
                  validator: (value) {
                    if (value!.isEmpty) print('Enter Your phone');
                  },
                  prfx: Icons.phone_iphone,
                  typ: TextInputType.phone),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  obscureText: isPass,
                  controller: passcontroler,
                  validator: (value) {
                    if (value!.isEmpty) print('Enter Your E-mail');
                  },
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      labelText: 'Passowrd',
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isPass = !isPass;
                            });
                          },
                          icon: isPass
                              ? const Icon(Icons.visibility_off)
                              : const Icon(Icons.visibility)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  obscureText: isPass,
                  controller: passconfcontroler,
                  validator: (value) {
                    if (value!.isEmpty) print('Enter Your E-mail');
                  },
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                      labelText: 'Confirm Passowrd',
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isPass = !isPass;
                            });
                          },
                          icon: isPass
                              ? const Icon(Icons.visibility_off)
                              : const Icon(Icons.visibility)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))),
                ),
              ),
              SizedBox(
                height: size.height * .04,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 103, 58, 183),
                    padding: EdgeInsets.symmetric(
                        vertical: size.height / 55, horizontal: size.width / 3),
                    textStyle: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold)),
                child: const Text('Register'),
              ),
              SizedBox(
                height: size.height * .02,
              ),
              OutlinedButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(context,
                        MaterialPageRoute(builder: (context) {
                      return Login();
                    }), (route) => false);
                  },
                  style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                          color: Color.fromARGB(255, 201, 187, 230), width: 2),
                      backgroundColor: const Color.fromARGB(255, 245, 244, 247),
                      padding: EdgeInsets.symmetric(
                          vertical: size.height / 55,
                          horizontal: size.width / 3.3),
                      textStyle: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 145, 104, 228))),
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.deepPurple),
                  ))
            ]),
          ),
        );
      },
    );
  }
}
