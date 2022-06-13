import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:iranian_pooshesh_agent_day/core/constants/constants.dart';
import 'package:iranian_pooshesh_agent_day/core/datasources/preferences/pref.dart';
import 'package:iranian_pooshesh_agent_day/core/datasources/preferences/pref_keys.dart';
import 'package:iranian_pooshesh_agent_day/core/resources/data_state.dart';
import 'package:iranian_pooshesh_agent_day/core/utils/exception_parser.dart';
import 'package:iranian_pooshesh_agent_day/core/utils/toast_utils.dart';
import 'package:iranian_pooshesh_agent_day/core/utils/utils.dart';

class ApiService {
  static var client = http.Client();

  static Future<DataState<bool>> postWithTokenWithImage(String url, FormData formData) async {
    String accessToken = await Pref.get(PrefKeys.kAccessToken);
    Map<String, String> requestHeaders = {
      "Accept": "application/json",
      'Authorization': accessToken
    };
    Dio dio = Dio(
      BaseOptions(
        connectTimeout: kSendPhotosConnectTimeout,
        receiveTimeout: kSendPhotosReceiveTimeout,
      ),
    );
    final response = await dio
        .post(kBaseUrl + url,
            options: Options(headers: requestHeaders, contentType: 'multipart/form-data'), data: formData)
        .catchError(
      (error) {
        if (Utils.isPrePublishTest) {
          ToastUtils.showSnackBar(
            toastType: ToastyType.error,
            msgError: 'ERROR$error => PATH: ${error.requestOptions.path} CODE: ${error.response?.statusCode}',
          );
        }
        if (kDebugMode) {
          print(error);
        }
        const DataSuccess<bool>(false);
      },
    );

    if (ExceptionParser.isStatusCodeSuccessful(response.statusCode)) {
      return const DataSuccess<bool>(true);
    } else {
      /*ToastUtils.showSnackBar(
        toastType: ToastyType.error,
        msgError: 'code error' + response.statusCode.toString(),
      );*/
      if (kDebugMode) {
        print('code error' + response.statusCode.toString());
      }
      return const DataSuccess<bool>(false);
    }
  }
}
