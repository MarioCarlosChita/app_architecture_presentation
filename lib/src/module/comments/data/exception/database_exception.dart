
import 'package:architecture_presentation/src/core/exception/app_exception.dart';

class  DatabaseException extends AppException{
  DatabaseException({required super.message ,super.stackTrace});
}