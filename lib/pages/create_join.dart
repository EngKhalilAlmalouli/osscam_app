import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Create_Join extends StatefulWidget {
  const Create_Join({super.key});

  @override
  State<Create_Join> createState() => _CreatState();
}

class _CreatState extends State<Create_Join> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xff10507A),
      body: Column(
        children: [
          Image(image: AssetImage('asset/images/bear2.png'),),

          const  SizedBox(height: 20,),
                Container(
                  height: 55,
                  width: 230,
                  child: ElevatedButton(onPressed: () {
                   context.go('/Create');

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


                const  SizedBox(height: 50,),
                Container(
                  height: 55,
                  width: 230,
                  child: OutlinedButton(onPressed: () {
                    showModalBottomSheet(
                      backgroundColor: Color(0xff77C1C1),
                      context: context,
                       builder: (BuildContext context) {
                        return SizedBox(
                          height: 400,
                          child: Column(
                            children: [
                              SizedBox(height: 30,),
                              Row(
                                children: [
                                  Text('Enter project’s \nID..',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  ),
                                  SizedBox(width: 25,),
                                  Image.asset('asset/images/sheet.png'),
                                ],
                              ),
                              SizedBox(height: 50,),
                              TextField(
                                
                              obscureText: false,
                              decoration: InputDecoration(
                            fillColor:  const Color(0xffFFFFFF1),
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                            ),
                            ),
                            ),

                          const  SizedBox(height: 100,),
                Container(
                  height: 49,
                  width: 271,
                  child: ElevatedButton(onPressed: () {
                    context.go('/GetProject');

                  },
                  child:const Text('confirm',
                  style: TextStyle(color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w400),
                  
                  
                  
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff10507A
),
                    
                  
                  ),
                  ),
                ),
                            ],
                          ),
                        );
                       }
                       );
                  },
                  
                  child:Row(
                    children: [
                       SizedBox(width: 20,),

                       Image.asset('asset/images/add.png'),
                       
                       SizedBox(width: 20,),
                      const Text('Join',
                      style: TextStyle(color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w400),
                      ),
                     
                    ],
                  ),
                  style: OutlinedButton.styleFrom(
                    
                    backgroundColor: const Color(0xff10507A),
                  ),
                  ),
                ),


        ],
      ),
    );
  }
}