import 'package:architecture_presentation/src/module/comments/domain/usecases/get_all_comments.dart';
import 'package:flutter/cupertino.dart';

class CommentProvider extends ChangeNotifier{
  CommentProvider({required this.getAllComments});
  final GetAllComments  getAllComments;
}