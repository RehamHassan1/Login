import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart';

class SimpleBlocObserver implements BlocObserver {
  @override
// complet code
  void onChange(BlocBase bloc, Change change) {
    if (kDebugMode) print(change);
  }

  @override
  void onClose(BlocBase bloc) {}
  @override
  void onCreate(BlocBase bloc) {}
  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {}
  @override
  void onEvent(Bloc bloc, Object? event) {}
  @override
  void onTransition(Bloc bloc, Transition transition) {
    print(transition);
  }
}
