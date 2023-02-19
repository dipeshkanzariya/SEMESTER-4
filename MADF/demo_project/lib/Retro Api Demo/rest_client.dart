import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'rest_client.g.dart';


@RestApi(baseUrl: "https://630c3f8e83986f74a7bbcf32.mockapi.io/faculties")
abstract class RestClient{
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/")
  Future<String> getFaculty();
}