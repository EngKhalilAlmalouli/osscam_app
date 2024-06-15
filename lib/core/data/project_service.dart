
import 'dart:math';

import 'package:dio/dio.dart';
import 'package:osscam_app/core/header.dart';
import 'package:osscam_app/core/models/error_handler/base_model.dart';
import 'package:osscam_app/core/models/response/project_response_model.dart';

class Service {
  Dio dio = Dio();
  late Response response;
  String baseUrl = "https://projects-management-system.onrender.com/api/v1/projects";
}
abstract class ProjectService extends Service{
  Future<dynamic> getProject();
  Future<dynamic> getOneProject();
}
class ProjectServiceImp extends ProjectService{

  @override
  Future<dynamic> getOneProject() async {

    try {
  response = await dio.get(baseUrl + 'projects/1', options: getHeader());
  if (response.statusCode==200) {
    ProjectResponseModel project =
    ProjectResponseModel.fromMap(response.data);
    return project;
  }else{
    return ErrorModel(message: 'the status code is not 200');
  }
} on DioException catch (e) {
  return ExceptionModel(message: e.message.toString());
}
    
  }

  @override
  Future<dynamic> getProject() async{
    response = await dio.get(baseUrl , options: getHeader(useToken: true));
    try{
      if (response.statusCode == 200) {
        List<ProjectResponseModel> project = List.generate(
          response.data.length, 
        (index) => ProjectResponseModel.fromMap(
          response.data[index],
        ),
        );
        ListOf<ProjectResponseModel> listOfProject = ListOf(project: project);
        return listOfProject;
      }else{
        return ErrorModel(message: 'THe status Code is not 200');
      }
    } on DioException catch (e) {
      return ExceptionModel(message: e.message.toString());
    }
    
  }

}