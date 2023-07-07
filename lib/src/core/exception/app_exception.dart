
class AppException  implements  Exception{
  final String message;
  final StackTrace?  stackTrace;

  AppException({required this.message, this.stackTrace});
}