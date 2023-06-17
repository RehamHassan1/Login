import 'package:flutter/material.dart';

class Log extends StatefulWidget {
  const Log({super.key});

  @override
  State<Log> createState() => _LogState();
}

class _LogState extends State<Log> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
           /* OutlinedButton(
              onPressed: () {},
              child: Text(
                'Login',
                selectionColor: Colors.white,
              ),
              style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  textStyle: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold)),
            )*/
                        loginButton(backgroundColor: Colors.blue,onPressed: (){},hinttext: 'reg'),

            loginButton(backgroundColor: Colors.blue,onPressed: (){},hinttext: 'Login')
          ]),
    );
  }
}

Widget loginButton({
  required Color? backgroundColor,
  TextEditingController? controller,
  String? Function(String?)? validator,
  required VoidCallback? onPressed,
  TextInputType? typ,
  required String hinttext,
}) {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(11),
        ),
      ),
        backgroundColor: backgroundColor,
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
    child: Text(
      hinttext,
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
  );
}
