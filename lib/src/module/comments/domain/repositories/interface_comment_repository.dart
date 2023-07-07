


import 'package:architecture_presentation/src/module/comments/domain/entities/comment.dart';

abstract class ICommentRepository{
  Future<List<Comment>>  fetchComments();
}