import 'package:flutter/material.dart';
import 'package:flutter_application_5/share/cubit.dart';
import 'package:flutter_application_5/share/single_bloc_opserve.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'login.dart';

void main() {
  Bloc.observer  = SimpleBlocObserver();
  runApp(const Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginCubit(),
        ),
        /* BlocProvider(
          create: (context) => SubjectBloc(),
        ),*/
      ],
      child: MaterialApp(
        theme: ThemeData(
            primaryColor: Colors.deepPurple,
            colorScheme:
                ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple)),
        debugShowCheckedModeBanner: false,
        home: Login(),
      ),
    );
  }
}
