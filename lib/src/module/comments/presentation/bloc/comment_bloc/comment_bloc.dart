
import 'package:architecture_presentation/src/module/comments/domain/usecases/get_all_comments.dart';
import 'package:architecture_presentation/src/module/comments/presentation/bloc/comment_bloc/comment_event.dart';
import 'package:architecture_presentation/src/module/comments/presentation/bloc/comment_bloc/comment_state.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class CommentBloc extends Bloc<CommentEvent,CommentState>{
  CommentBloc({required this.getAllComments }):super(CommentInitialState());
  final GetAllComments  getAllComments;
}