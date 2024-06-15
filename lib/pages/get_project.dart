// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:osscam_app/core/data/project_service.dart';
import 'package:osscam_app/core/models/error_handler/base_model.dart';
import 'package:osscam_app/core/models/response/project_response_model.dart';
import 'package:osscam_app/feature/project/bloc/project_managment_bloc.dart';
import 'package:osscam_app/feature/project/bloc/project_managment_event.dart';
import 'package:osscam_app/feature/project/bloc/project_managment_state.dart';

class GetProject extends StatelessWidget {
  const GetProject({super.key});

  @override
  Widget build(BuildContext context) {
    // return  Scaffold(
    //   backgroundColor: Color(0XFF10507A),
    //   body: Center(
    //     child: Column(
    //       children: [
    //         Padding(
    //           padding: EdgeInsets.all(12),
    //           child: ElevatedButton(
    //             onPressed: ()async{
    //               ResultModel result =
    //               await ProjectServiceImp().getProject();
    //               if (result is ListOf<ProjectResponseModel>) {
    //                 ScaffoldMessenger.of(context).showSnackBar(snackBar(
    //                   content: Text("Success To Fetch data"),
    //                   backgroundColor: Colors.red,
    //                 ));
    //                 var project;
    //                 project.value = result;
    //               } else{
    //                 ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    //                       content: Text(" not Success To Fetch data"),
    //                       backgroundColor: Colors.red,
    //                     ));
    //               }
    //             },
    //              child: Text('Hello ')),
    //              ),
               
               
            
    //       ],
    //     ),
    //   ),
    // );

    return Scaffold(
      body: BlocProvider(
        create: (context) => ProjectManagementBloc()..add(GetAllProject()),
        child: Builder(builder: (context) {
          return Scaffold(
            body: BlocBuilder<ProjectManagementBloc, ProjectManagementState>(
              builder: (context, state) {
                if (state is SuccessFetchProject) {
                  return ListView.builder(
                    itemCount: state.listOfProject.length,
                    itemBuilder: (context, index) => ListTile(
                      title: Container(
                        height: 95,
                        width: 317,
                        color: Color(0XFFD9D9D9),
                        child: Text(state.listOfProject[index].name)
                        ),
                    ),
                  );
                } else if (state is OfflineState) {
                  return Center(
                    child: Text(state.message),
                  );
                } else if (state is ErrorState) {
                  return Center(child: Text(state.message));
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
          );
        }),
      ),
    );
  }
}
  