

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:osscam_app/core/data/project_service.dart';
import 'package:osscam_app/core/models/error_handler/base_model.dart';
import 'package:osscam_app/core/models/response/project_response_model.dart';
import 'package:osscam_app/feature/project/bloc/project_managment_event.dart';
import 'package:osscam_app/feature/project/bloc/project_managment_state.dart';

class ProjectManagementBloc 
extends Bloc<ProjectManagementEvent , ProjectManagementState> {
    ProjectManagementBloc() : super(ProjectManagementInitial ()) {
        on<GetAllProject>((event, emit) async {
            emit(LoadingState());
            ResultModel result = await ProjectServiceImp().getProject();

            if (result is ListOf<ProjectResponseModel>) {
                        emit(SuccessFetchProject(listOfProject: result.project));

              
            } else if (result is ErrorModel){
               emit(ErrorState(message: result.message));
            }else {
        emit(OfflineState(message: (result as ExceptionModel).message));
      }
        }
        );
    }
}