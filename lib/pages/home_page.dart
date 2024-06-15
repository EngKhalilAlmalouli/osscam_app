// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:read_more_text/read_more_text.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

  String content = " Enterprise equipment management system Through which information is stored All types of equipment available And all maintenance operations are with Possibility of issuing reports and statements Periodic (such as reports on devices). Which must be formatted and replaced With new devices Through which information is stored All types of equipment available And all maintenance operations are with Possibility of issuing reports and statements Periodic (such as reports on devices). Which must be formatted and replaced With new devices.Through which information is stored All types of equipment available And all maintenance operations are with Possibility ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100)
        ),
        onPressed: (){},
        backgroundColor: Color(0XFF87DADA),
        child: Image.asset("asset/images/floatingButton.png"),
        ),
        
     backgroundColor: Color(0XFF1B2F6C),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 50,),
            Container(
              height: 51,
              width: 316,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color(0XFF77C1C1),
              ),
              child: ListTile(title:
              const Text("project name",
               style: TextStyle(fontSize: 20,
               fontWeight: FontWeight.w600,
               color: Color(0XFFFFFFFF),
               ),
               ),
               leading: IconButton(onPressed: (){},
                icon: const Icon(Icons.list),
                ),
                trailing: Row(
                    children: [
                        Icon(Icons.circle),
                        Icon(Icons.circle)
                    ],
                ),
                
               ),
            ),

           const SizedBox(height: 50,),
            Container(
              height: 225,
              width: 316,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0XFFFFEACD),
              ),
              child: SingleChildScrollView(
                child: ReadMoreText(
                  content,
                   numLines: 10,
                   readMoreText: "read more ...",
                    readLessText: "read less...", 
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                    ),
              ),

            )
          ],
        ),
      ),
      

    );
  }
}