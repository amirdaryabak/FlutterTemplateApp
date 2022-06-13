// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remote_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _RemoteService implements RemoteService {
  _RemoteService(this._dio, {this.baseUrl}) {
    baseUrl ??= 'https://test.com/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<HttpResponse<Map<String, String>>> postCreateOTP(
      {required params}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(params);
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<HttpResponse<Map<String, String>>>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, 'base/create_otp/',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data!.cast<String, String>();
    final httpResponse = HttpResponse(value, _result);
    return httpResponse;
  }

  @override
  Future<HttpResponse<Map<String, String>>> postValidateOTP(
      {required params}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(params);
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<HttpResponse<Map<String, String>>>(
            Options(method: 'POST', headers: _headers, extra: _extra)
                .compose(_dio.options, 'base/validate_otp/',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data!.cast<String, String>();
    final httpResponse = HttpResponse(value, _result);
    return httpResponse;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
