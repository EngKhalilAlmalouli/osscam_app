// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:osscam_app/cache/cache_helper.dart';

import 'package:osscam_app/core/api/api_consumer.dart';
import 'package:osscam_app/core/api/end_points.dart';
import 'package:osscam_app/core/errors/exceptions.dart';
import 'package:osscam_app/core/models/sign_in_model.dart';
import 'package:osscam_app/core/models/sign_up_model.dart';
import 'package:osscam_app/cubit/user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit(
    this.api,
  ) : super(UserInitial());
  final ApiConsumer api;
  //sign in form key
  GlobalKey<FormState> signInFormKey =GlobalKey();
  // sign in email
  TextEditingController signInEmail = TextEditingController();
  // sign in password
  TextEditingController signInPassword = TextEditingController();
  // sign up form key
  GlobalKey<FormState> signUpFormKey = GlobalKey();

  //profile pic
  // xFlie? profilePic;

  // sign up Name
  TextEditingController signUpName = TextEditingController();
  // sign in PhoneNunber
  TextEditingController signUpPhoneNunber = TextEditingController();
  // sign in Email
  TextEditingController signUpEmail = TextEditingController();
  // sign in password
  TextEditingController signUpPassword = TextEditingController();
  // sign in confirmPassword
  TextEditingController confirmPassword = TextEditingController();
  SignInModel? user;

signIn() async {
 try {
  emit(SignInLoading());
  print( {
   ApiKey.email: signInEmail.text,
   ApiKey.password: signInPassword.text,
  },);
 final response = await api.post(EndPoint.signIn,
  data: {
   ApiKey.email: signInEmail.text,
   ApiKey.password: signInPassword.text,
  },
  );
  user = SignInModel.fromJson(response);
//  final decodedToken = JwtDecoder.decode(user!.token);
//  CacheHelper().saveData(key: ApiKey.token, value: user!.token);
//  CacheHelper().saveData(key: ApiKey.id, value: decodedToken[ApiKey.id]);

  emit(SignInSuccess());
} on ServerException catch (e) {
  emit(SignInFailure(errMessage: e.errorModel.errorMessage));
  }

  
signUp() async {
  try {
    emit(SignInLoading());
 final response = await api.post(
    EndPoint.signUp,
  isFormData: true,
  data : {
    ApiKey.firstName,
    ApiKey.lastName,
    ApiKey.email,
    ApiKey.password,
  }
  );
  final signUpModel = SignUpModel.fromJson(response);
  emit(SignUpSuccess(message: signUpModel.message));
} on ServerException catch (e) {
  emit(SignInFailure(errMessage: e.errorModel.errorMessage));
  // TODO
}
}



 }
}


