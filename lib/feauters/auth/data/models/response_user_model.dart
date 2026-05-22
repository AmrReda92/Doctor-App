class ResponseUserModel {
  final String token;
  final String userName;

  ResponseUserModel({required this.token,required this.userName});

  factory ResponseUserModel.fromJson(Map<String,dynamic> json){
    return ResponseUserModel(
        token: json["data"]["token"],
        userName: json["data"]["username"]
    );
  }
}