
import 'package:dio/dio.dart';

getHeader({bool useToken = true}) {
  if (useToken){
    return Options(headers: {
        "Authorization": "Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJoZWxsbzEyM2hlbGxvQGdtYWlsLmNvbSIsImlhdCI6MTcxNzUxNzQ1MiwiZXhwIjoxNzE4MTIyMjUyfQ.Ez3iIhGRGpzqAT8eoaBY2x3Ti4_nTsT_DVwFwSPz4EY"
    });
  }else{
    return Options(
      headers: {
        "content-type" :"application/json"
      },
    );
  }
}
