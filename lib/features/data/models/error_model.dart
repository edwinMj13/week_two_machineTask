class ErrorModel{
  final String message;
  final String? statusCode;

  ErrorModel({required this.message, this.statusCode});

  @override
  String toString() {
    return "ErrorModel( message : $message , statusCode : $statusCode )";
  }
}