import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:osscam_app/cubit/user_cubit.dart';
import 'package:osscam_app/cubit/user_state.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
    bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UserCubit, UserState>(
      listener: (context, state) {
        
      },
      builder:(context, state) => Scaffold(
        backgroundColor:const Color(0xff10507A),
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
                  color:const Color(0XFFD9D9D9),
                  child: Column(
                    children: [
                      SizedBox(height: 20,),
                      TextField(
                                obscureText: false,
                                decoration: InputDecoration(
                              fillColor:  const Color(0xff77C1C1),
                              filled: true,
                              hintText: 'Example',
                              labelText: 'FirstName',
                              
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                
                              ),
                              ),
                              ),
                              SizedBox(height: 20,),
                      TextField(
                                obscureText: false,
                                decoration: InputDecoration(
                              fillColor:  const Color(0xff77C1C1),
                              filled: true,
                              hintText: 'Example',
                              labelText: 'LastName',
                              
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                
                              ),
                              ),
                              ),
      
                            const  SizedBox(height: 20,),
                      TextField(
                                obscureText: false,
                                decoration: InputDecoration(
                              fillColor:  const Color(0xff77C1C1),
                              filled: true,
                              hintText: 'Example@gmail.com',
                              labelText: 'Email',
                              
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                
                              ),
                              ),
                              ),
          
          
                              const SizedBox(height: 20,),
                      TextField(
                                obscureText: false,
                                decoration: InputDecoration(
                              fillColor:  const Color(0xff77C1C1),
                              filled: true,
                              hintText: '*****',
                              labelText: 'password',
                              
                              
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)
                              ),
                              ),
                              ),
          
          
                               const SizedBox(height: 20,),
                              Row(
                            children: [
                            
                              Checkbox(
                            value: isChecked,
                             onChanged: (Value){
                              setState(() {
                                isChecked = Value!;
                              },);
                              
                             },
                             ),
                             const  SizedBox(width: 5.5),
                             const Text('remember me   ',style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                             ),
                              ),      
                      ],
                      ),                  
                    ],
                  ),
                ),
                const  SizedBox(height: 25,),
                  Container(
                    height: 55,
                    width: 230,
                    child:
                     ElevatedButton(onPressed: () {
                      GoRouter.of(context).go("/Creat");
                    },
                    child:const Text('Sign up',
                    style: TextStyle(color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w400),
                    
                    
                    
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffFFEACD),
                      
                    
                    ),
                    ),
                  ),
                  SizedBox(height: 20,),
          
                  Row(
                    children: [
                      Text('             Dont have an account?', style: TextStyle(
                        fontSize: 15,fontWeight: FontWeight.w400,color: Colors.white
                        ),),
                          IconButton(
                onPressed: () {
                  GoRouter.of(context).go("/LogIn");
                },
                 icon:const Text('Log in',
                 style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffA3F9F9BF)
          
                 ),),
                 ),
                    ],
                  ),
                  
              ],
            ),
            
            
          ),
        ),
      ),
    );
  }
}