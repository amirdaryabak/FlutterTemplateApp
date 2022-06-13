import 'package:dio/dio.dart';
import 'package:iranian_pooshesh_agent_day/core/constants/constants.dart';
import 'package:retrofit/retrofit.dart';

part 'remote_service.g.dart';

@RestApi(baseUrl: kBaseUrl)
abstract class RemoteService {
  factory RemoteService(Dio dio, {String baseUrl}) = _RemoteService;

  //region <<<<<<<<<<<<<<< Login >>>>>>>>>>>>>>>

  @POST('base/create_otp/')
  Future<HttpResponse<Map<String, String>>> postCreateOTP({
    @Body() required Map<String, String> params,
  });

  @POST('base/validate_otp/')
  Future<HttpResponse<Map<String, String>>> postValidateOTP({
    @Body() required Map<String, dynamic> params,
  });

// endregion

}
