import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
    bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    SizedBox(height: 40,),
                    TextField(
                              obscureText: false,
                              decoration: InputDecoration(
                            fillColor:  const Color(0xff77C1C1),
                            filled: true,
                            hintText: 'Example',
                            labelText: 'Username',
                            
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              
                            ),
                            ),
                            ),

                            SizedBox(height: 40,),
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
        
        
                             SizedBox(height: 40,),
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
        
        
                             const SizedBox(height: 30,),
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
                  child: ElevatedButton(onPressed: () {
                  },
                  child:const Text('Login',
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
              },
               icon:const Text('Sign up',
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
    );
  }
}