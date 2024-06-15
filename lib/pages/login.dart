import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:osscam_app/core/api/end_points.dart';
import 'package:osscam_app/cubit/user_cubit.dart';
import 'package:osscam_app/cubit/user_state.dart';
import 'package:osscam_app/pages/home_page.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  bool? isChecked = false;

  get controller => null;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<UserCubit, UserState>(
        listener: (context, state) {
          if (state is SignInSuccess) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text("success")));
          } else if (state is SignInFailure) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.errMessage)));
          }
        },
        builder: (context, state) => Scaffold(
          backgroundColor: const Color(0xff10507A),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(36),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('asset/images/bear.png'),
                  Container(
                    height: 360,
                    width: 288,
                    color: const Color(0XFFD9D9D9),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 80,
                        ),
                        TextField(
                          controller: email,
                          obscureText: false,
                          decoration: InputDecoration(
                            fillColor: const Color(0xff77C1C1),
                            filled: true,
                            hintText: 'Example@gmail.com',
                            labelText: 'Email',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        TextField(
                          controller: password,
                          obscureText: false,
                          decoration: InputDecoration(
                            fillColor: const Color(0xff77C1C1),
                            filled: true,
                            hintText: '*****',
                            labelText: 'password',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Checkbox(
                              value: isChecked,
                              onChanged: (Value) {
                                setState(
                                  () {
                                    isChecked = Value!;
                                  },
                                );
                              },
                            ),
                            const SizedBox(width: 5.5),
                            const Text(
                              'remember me   ',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    height: 55,
                    width: 230,
                    child: state is SignInLoading
                        ? CircularProgressIndicator()
                        : ElevatedButton(
                            onPressed: () {
                              context.go('/Create_Join');
                            },
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w400),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xffFFEACD),
                            ),
                          ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        '             Dont have an account?',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                      IconButton(
                        onPressed: () async {
                          // GoRouter.of(context).go("/SignUp");
                          // context.read<UserCubit>().signIn();
                          var temp = await signIn();
                          if (temp is bool) {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(SnackBar(content: Text('MP')));
                          } else {
                            print(temp);
                            context.go('/HomePage');
                          }
                        },
                        icon: const Text(
                          'Sign up',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffA3F9F9BF)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

TextEditingController email = TextEditingController();

TextEditingController password = TextEditingController();
signIn() async {
    Dio dio = Dio();
  var response = await dio.post(
    EndPoint.signIn,
    data: {
      'email': email.text,
      'password': password.text,
    },
    // options: Options(
    //     headers: {
    //         'accept': '*/*',
    //         'Content-Type': 'application/json',
    //     }
    // )
  );
  if (response.statusCode == 200) {
    return response.data;
  } else {
    print("error===================================");
    return false;
  }
}
