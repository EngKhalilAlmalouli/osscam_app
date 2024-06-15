import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:osscam_app/cache/cache_helper.dart';
import 'package:osscam_app/core/api/dio_consumer.dart';
import 'package:osscam_app/cubit/user_cubit.dart';
import 'package:osscam_app/pages/create.dart';
import 'package:osscam_app/pages/create2.dart';
import 'package:osscam_app/pages/create_Join.dart';
import 'package:osscam_app/pages/get_project.dart';
import 'package:osscam_app/pages/home_page.dart';
import 'package:osscam_app/pages/login.dart';
import 'package:osscam_app/pages/signup.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  CacheHelper().init();
  runApp(BlocProvider(
    create: (context) => UserCubit(DioConsumer(dio: Dio())),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   home: Scaffold(
    //     body: HomePage(),
    //   ),
    // );

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
    );
  }

  final GoRouter _router = GoRouter(
      //   // initialLocation:"/" ,
      routes: [
        GoRoute(path: "/", builder: ((context, state) => const LogIn())),
        GoRoute(path: "/LogIn", builder: ((context, state) => const LogIn())),
        GoRoute(path: "/LogIn", builder: ((context, state) => const Create_Join())),
        GoRoute(path: "/SignUp", builder: ((context, state) => const SignUp())),
        GoRoute(path: "/SignUp", builder: ((context, state) => const Create_Join())),
        GoRoute(path: "/Create_Join", builder: ((context, state) => const Create_Join())),
        GoRoute(path: "/Create", builder: ((context, state) => const Create())),
        GoRoute(path: "/Create2", builder: ((context, state) => const Create2())),
        GoRoute(path: "/Create", builder: ((context, state) => const Create2())),
        GoRoute(path: "/Create_Join", builder: ((context, state) => const Create())),
        GoRoute(path: "/HomePage", builder: ((context, state) => HomePage())),
        GoRoute(path: "/SignUp", builder: ((context, state) => HomePage())),
        GoRoute(path: "/Create_Join", builder: ((context, state) => Create_Join())),
        GoRoute(path: "/GetProject", builder: ((context, state) => GetProject())),
        GoRoute(path: "/Create2", builder: ((context, state) => HomePage())),       
        GoRoute(path: "/HomePage", builder: ((context, state) => HomePage())),


        

      ]);
}
