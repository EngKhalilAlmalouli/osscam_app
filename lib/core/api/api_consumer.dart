abstract class ApiConsumer{
 Future<dynamic> get(
    String patch,{
      Object? data,
      Map<String,dynamic>? quiryParameters,
      
    }
  );
  Future<dynamic> post(
    String patch,{
      Object? data,
      Map<String,dynamic>? quiryParameters,
      bool isFormData = false,
    }
  );
  Future<dynamic> patch(
    String patch,{
      Object? data,
      Map<String,dynamic>? quiryParameters,
      bool isFormData = false,
    }
  );
  Future<dynamic> delete(
    String patch,{
      Object? data,
      Map<String,dynamic>? quiryParameters,
      bool isFormData = false,
    }
  );
}