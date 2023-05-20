import 'package:flutter_application_5/share/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<Loginstate> {
  LoginCubit() : super(LoginInitial());

  static LoginCubit get(context) => BlocProvider.of(context);
  bool isPass = true;
  void changePassVisibiltyState() {
    isPass = !isPass;
    emit(LoginchangePassVisibiltyState());
  }
}
