import 'package:flutter/material.dart';

class Creat extends StatefulWidget {
  const Creat({super.key});

  @override
  State<Creat> createState() => _CreatState();
}

class _CreatState extends State<Creat> {
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