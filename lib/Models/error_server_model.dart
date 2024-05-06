class ErrorServerModel {
  final bool status;
  final String message;

  ErrorServerModel({required this.status, required this.message});

  factory ErrorServerModel.fromJson(Map<String, dynamic> jsonData) {
    return ErrorServerModel(
      status: jsonData['status'],
      message: jsonData['message'],
    );
  }
}
