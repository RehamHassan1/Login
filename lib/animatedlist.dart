import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AnimatedlistScreen extends StatelessWidget {
  const AnimatedlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
        final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated List'),
        centerTitle: true,
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return Container(
height: size.height/10,
width: size.width*.9,
margin: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 15),
decoration: BoxDecoration(color: Colors.white,
borderRadius: BorderRadius.circular(10),
boxShadow: [
  BoxShadow(
    color: Colors.grey.withOpacity(0.5),
    spreadRadius: 5,
    blurRadius: 7,
    offset: Offset(0, 3)
  )
]
),
        );
        
      },
      itemCount: 20,
  
      
      ),
    );
  }
}
