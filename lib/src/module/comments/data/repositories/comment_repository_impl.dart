import 'dart:async';
import 'dart:io';

import 'package:architecture_presentation/src/core/services/internet_connectity_service.dart';
import 'package:architecture_presentation/src/module/comments/data/exception/database_exception.dart';
import 'package:architecture_presentation/src/module/comments/data/local/comment_data_local.dart';
import 'package:architecture_presentation/src/module/comments/data/remote/comment_data_remote.dart';
import 'package:architecture_presentation/src/module/comments/domain/entities/comment.dart';
import 'package:architecture_presentation/src/module/comments/domain/repositories/interface_comment_repository.dart';

class CommentRepositoryImpl implements ICommentRepository {
  CommentRepositoryImpl({
    required this.commentDataLocal,
    required this.commentDataRemote,
    required this.internetConnectivityService,
  });

  final InternetConnectivityService internetConnectivityService;
  final CommentDataRemote commentDataRemote;
  final CommentDataLocal commentDataLocal;

  @override
  Future<List<Comment>> fetchComments() async {
    bool hasInternet = await internetConnectivityService.hasInternet();
    if (hasInternet) {
      try {
        final responseRemoteData = await commentDataRemote.fetchComments();
        return responseRemoteData;
      } catch (exception) {
        throw SocketException(
          exception.toString(),
        );
      }
    } else {
      try {
        final responseLocalData = await commentDataLocal.fetchComments();
        return responseLocalData;
      } catch (exception, stacktrace) {
        throw DatabaseException(
          message: exception.toString(),
          stackTrace: stacktrace,
        );
      }
    }
  }
}
