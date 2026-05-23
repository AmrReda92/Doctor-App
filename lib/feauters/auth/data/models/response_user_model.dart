class ResponseUserModel {
  final String token;
  final String userName;
  final String message;
  final int code;
  final String status;

  ResponseUserModel({required this.token,required this.userName,required this.code,required this.message,required this.status});

  factory ResponseUserModel.fromJson(Map<String,dynamic> json){
    return ResponseUserModel(
      message: json["message"],
      status: json["status"],
      code: json["code"],
      token: json["data"]["token"],
      userName: json["data"]["username"],

    );
  }
}