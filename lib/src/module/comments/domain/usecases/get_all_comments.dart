import 'package:architecture_presentation/src/module/comments/domain/repositories/interface_comment_repository.dart';

import '../entities/comment.dart';

class  GetAllComments{

  GetAllComments({required this.iCommentRepository});
  final  ICommentRepository iCommentRepository;
  Future<List<Comment>>  fetchComments() =>  iCommentRepository.fetchComments();
}