import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:iranian_pooshesh_agent_day/core/datasources/remote/dio/dio_provider.dart';
import 'package:iranian_pooshesh_agent_day/core/datasources/remote/remote_service.dart';

Future<void> initDependencies() async {

//region <<<<<<<<<<<<<<< RemoteService >>>>>>>>>>>>>>>

  Get.put<Dio>(DioProvider().dio);
  Get.put<RemoteService>(RemoteService(Get.find<Dio>()));

//endregion

//region <<<<<<<<<<<<<<< Repository >>>>>>>>>>>>>>>


//endregion

//region <<<<<<<<<<<<<<< UseCases >>>>>>>>>>>>>>>

//endregion

//region <<<<<<<<<<<<<<< Controller >>>>>>>>>>>>>>>

//endregion
}
