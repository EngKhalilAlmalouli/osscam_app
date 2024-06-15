// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:osscam_app/core/api/end_points.dart';

class SignInModel {
  final String access_token;
  SignInModel({
    required this.access_token,
  });

  

  SignInModel copyWith({
    String? access_token,
  }) {
    return SignInModel(
      access_token: access_token ?? this.access_token,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access_token': access_token,
    };
  }

  factory SignInModel.fromMap(Map<String, dynamic> map) {
    return SignInModel(
      access_token: map['access_token'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory SignInModel.fromJson(String source) => SignInModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'SignInModel(access_token: $access_token)';

  @override
  bool operator ==(covariant SignInModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.access_token == access_token;
  }

  @override
  int get hashCode => access_token.hashCode;
}
