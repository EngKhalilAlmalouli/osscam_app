import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Create extends StatelessWidget {
  const Create({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: const Color(0XFF0A324D),
        body: Column(
            children: [
                Image.asset('asset/images/createbear.png'),
                const SizedBox(height: 5,),
                
                const Text('Project name',
                 style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600,

                ),
                ),
                 const SizedBox(height: 20,),

                 TextField(
                    decoration: InputDecoration(
                         fillColor: Colors.white,
                            filled: true,
                            
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                    ),
                ),

             const SizedBox(height: 5,),
                
                const Text('Project script',
                 style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600,

                ),
                ),
                 const SizedBox(height: 20,),

                 TextField(
                    decoration: InputDecoration(
                         fillColor: Colors.white,
                            filled: true,
                        //    labelText: ' Enterprise equipment management \nsystem \nThrough which information is stored \nAll types of equipment available \nAnd all maintenance operations are with \nPossibility of issuing reports and \nstatement',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                    ),
                    minLines: 1,
                    maxLines: 10,
                ),

                const  SizedBox(height: 20,),
                Container(
                  height: 55,
                  width: 230,
                  child: ElevatedButton(onPressed: () {
                   context.go('/Create2');

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

            ],
        ),

    );
  }
}