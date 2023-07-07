

import 'package:architecture_presentation/src/core/services/http_client_service.dart';
import 'package:architecture_presentation/src/module/comments/domain/entities/comment.dart';

class CommentDataRemote{

   CommentDataRemote(this._httpClientService);
   final HttpClientService _httpClientService;

   String _pathUrl ="/comments";

   Future<List<Comment>>  fetchComments() async  {
     final response =await _httpClientService.get(_pathUrl);
     return List.from(response.map((comment) => Comment.from(comment)));
   }
}