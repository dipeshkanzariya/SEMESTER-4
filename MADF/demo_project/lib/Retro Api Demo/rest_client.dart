import 'package:demo_project/API%20Demo/add_faculty_page.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'rest_client.g.dart';


@RestApi(baseUrl: "https://630c3f8e83986f74a7bbcf32.mockapi.io/faculties")
abstract class RestClient{
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/")
  Future<String> getFaculty();

  @POST("/")
  @FormUrlEncoded()
  Future<dynamic> AddFaculty(
      @Field('FacultyName') name,
      @Field('FacultyImage') image,
      @Field('FacultyDepartment') department,
      @Field('Experience') experience,
      @Field('Specialization') specialization,
      @Field('Subjects') subjects,
      );

  @DELETE("/{id}")
  Future<dynamic> deleteFaculty(@Path("id") id);

  @PUT("/{id}")
  Future<dynamic> updateFaculty(
      @Path("id") id,
      map
      );
}