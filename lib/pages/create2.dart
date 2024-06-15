import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Create2 extends StatelessWidget {
  const Create2({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: const Color(0XFF0A324D),
        body: Column(
            children: [
                Image.asset('asset/images/createbear.png'),
                const SizedBox(height: 5,),
                
                const Text('Task',
                 style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600,

                ),
                ),
                 const SizedBox(height: 20,),

                 

                const  SizedBox(height: 20,),
                Center(
                  child: Container(
                    height: 55,
                    width: 230,
                    child: ElevatedButton(onPressed: () {
                     context.go('/HomePage');
                  
                    },
                    child:const Text('create',
                    style: TextStyle(color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w400),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffFFEACD),
                    ),
                    ),
                  ),
                ),

            ],
        ),
    );
  }
}