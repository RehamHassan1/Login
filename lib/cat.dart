import 'package:flutter/material.dart';

Widget MyTextF({
  required String labeltext,
  required IconData prfx,
  required TextInputType typ,
  required String? Function(String?)? validator,
  IconData? sfx,
  required TextEditingController controller,
  bool obsecure=false,
}) {
  return Padding(
    padding: const EdgeInsets.all(19.0),
    child: TextFormField(
      keyboardType: typ,
      validator: validator,
      obscureText: obsecure,
      controller: controller,
      decoration:  InputDecoration(
        prefixIcon: Icon(prfx),
        
        labelText: labeltext,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        suffixIcon:  sfx !=null
        ?IconButton(onPressed: (){}, icon: Icon(sfx)):null,
      ),
    ),
  );
}
