
import 'package:osscam_app/core/models/response/project_response_model.dart';

class ProjectManagementState {}
final class ProjectManagementInitial extends ProjectManagementState {}

class SuccessFetchProject extends ProjectManagementState {
    List<ProjectResponseModel> listOfProject;
  SuccessFetchProject({
    required this.listOfProject,
  });
}
 
class ErrorState extends ProjectManagementState{
  String message;
  ErrorState({
    required this.message,
  });
}

class OfflineState extends ProjectManagementState{
  String message;
  OfflineState({
    required this.message,
  });
}

class LoadingState extends ProjectManagementState {}