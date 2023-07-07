



import 'package:architecture_presentation/src/core/services/database_service.dart';

import '../../domain/entities/comment.dart';

class CommentDataLocal{
  CommentDataLocal({required this.databaseService});
  final  DatabaseService databaseService;

  Future<List<Comment>>  fetchComments() async  {
    await Future.delayed(const Duration(milliseconds: 300));
    return [];
  }


}