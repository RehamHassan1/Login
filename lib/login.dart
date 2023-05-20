import 'package:flutter/material.dart';
import 'package:flutter_application_5/animatedlist.dart';
import 'package:flutter_application_5/share/cubit.dart';
import 'package:flutter_application_5/share/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cat.dart';
import 'package:flutter_application_5/register.dart';

import 'com.dart';

class Login extends StatelessWidget {

  final emailcontroler = TextEditingController();
  final passcontroler = TextEditingController();
  final formkey = GlobalKey<FormState>();
  Login({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocBuilder<LoginCubit, Loginstate>(
      builder: (context, state) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(children: [
                ClipPath(
                  clipper: Myclipp(),
                  child: Container(
                    color: Colors.deepPurple,
                    height: size.height / 3,
                    child: Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: size.height / 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height / 11,
                ),
                MyTextF(
                    labeltext: 'E-mail',
                    prfx: Icons.email,
                    controller: emailcontroler,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please Enter Your E-mail';
                      } else if (emailcontroler.text.contains(".") == false ||
                          emailcontroler.text.contains("@") == false) {
                        return 'Please Enter a validate email';
                      }
                      return null;
                    },
                    typ: TextInputType.emailAddress),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    obscureText: LoginCubit.get(context).isPass,
                    controller: passcontroler,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                        labelText: 'Passowrd',
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: IconButton(
                            onPressed: () {
                              LoginCubit.get(context).changePassVisibiltyState();
                            },
                            icon: LoginCubit.get(context).isPass
                                ? const Icon(Icons.visibility_off)
                                : const Icon(Icons.visibility)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15))),
                    validator: (value) {
                      if (value!.isEmpty)
                        return 'Please Enter Your pass';
                      else if (value.length < 8)
                        return 'Password must be at least 8 characters';
                      return null;
                    },
                  ),
                ),
                SizedBox(
                  height: size.height * .04,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      debugPrint(emailcontroler.text);
                      debugPrint(passcontroler.text);
                      MyNavig(contx: context, widg: AnimatedlistScreen());
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 103, 58, 183),
                      padding: EdgeInsets.symmetric(
                          vertical: size.height / 55,
                          horizontal: size.width / 3),
                      textStyle: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                  child: const Text('Login'),
                ),
                SizedBox(
                  height: size.height * .02,
                ),
                OutlinedButton(
                    onPressed: () {
                      /*   Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return RegisterScreen();
                      }));*/
                      MyNavig(contx: context, widg: const RegisterScreen());
                    },
                    style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                            color: Color.fromARGB(255, 201, 187, 230),
                            width: 2),
                        backgroundColor:
                            const Color.fromARGB(255, 245, 244, 247),
                        padding: EdgeInsets.symmetric(
                            vertical: size.height / 55,
                            horizontal: size.width / 3.3),
                        textStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 145, 104, 228))),
                    child: const Text(
                      'Register',
                      style: TextStyle(color: Colors.deepPurple),
                    ))
              ]),
            ),
          ),
        );
      },
    );
  }
}
