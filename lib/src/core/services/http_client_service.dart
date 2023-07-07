import 'package:http/http.dart';


class  HttpClientService{
  Future<dynamic>   get(String path) async{
    return  Response("data:[]", 200);
  }
}