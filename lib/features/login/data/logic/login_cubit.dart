import 'package:aloosra_clinic/features/login/data/models/login_request_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../repos/login_repo.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;

  LoginCubit(this._loginRepo) : super(const LoginState.initial());
//here i will define the controller for the validation
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  //also the form key
  final formKey = GlobalKey<FormState>();


  void emitLoginStates(LoginRequestBody loginRequestBody) async {
    emit(const LoginState.loading());

    final response = await _loginRepo.login(loginRequestBody);

    response.when(success: (loginResponse) {
      emit(LoginState.success(loginResponse));
    }, failure: (error) {
      //get model give string msg
      emit(LoginState.error(error: error.apiErrorModel.message ?? ''));
    });
  }
}
