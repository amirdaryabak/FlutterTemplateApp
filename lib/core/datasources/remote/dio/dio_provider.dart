import 'package:dio/dio.dart';
import 'package:iranian_pooshesh_agent_day/core/constants/constants.dart';
import 'package:iranian_pooshesh_agent_day/core/datasources/remote/interceptors/authentication_interceptor.dart';
import 'package:iranian_pooshesh_agent_day/core/datasources/remote/interceptors/logging_interceptor.dart';
import 'package:iranian_pooshesh_agent_day/core/datasources/remote/remote_service.dart';

class DioProvider {
  late Dio dio;
  late RemoteService remoteService;
  static final DioProvider _instance = DioProvider._internal();

  factory DioProvider() => _instance;

  DioProvider._internal() {
    dio = Dio(
      BaseOptions(
        connectTimeout: kConnectTimeout,
        receiveTimeout: kReceiveTimeout,
      ),
    )..interceptors.addAll(
        [
          LoggingInterceptor(),
          AuthenticationInterceptor(),
        ],
      );
    remoteService = RemoteService(dio);
  }
}
