import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:neo_bench/services/apiService/api_utils.dart';

class ApiManager{
  static Future<http.Response> callPost({
    required String apiUrl,
    required String body,
    required Map<String, String> header,
  }) async {
    var url = Uri.https(ApiUrl.baseUrl, apiUrl);
    debugPrint("URL :: ${url.toString()}");
    debugPrint("body :: ${body.toString()}");
    debugPrint("header :: ${header.toString()}");

    var response = await http.post(url, body: body, headers: header).onError((error, stackTrace) {
      debugPrint(error.toString());
      throw error.toString();
    });
    debugPrint('response: ${response.body}');

    var decoded = jsonDecode(response.body);
    // BaseResponse baseResponse = BaseResponse.fromJson(decoded);
    // if (baseResponse.status == AppStrings.error) {
    //   debugPrint('baseResponse.message: ${baseResponse.message}');
    //   CommonFunction.toast(msg: baseResponse.message!, isError: true);
    //   throw "";
    // } else if (baseResponse.status == AppStrings.logout) {
    //   CommonFunction.toast(msg: AppStrings.sessionTimeout, isError: true);
    //
    // }

    debugPrint("response.statusCode :: ${response.statusCode}");
    debugPrint("response.body :: ${response.body}");

    return response;
  }
  static Future<http.Response> callGet({
    required String apiUrl,
    required Map<String, String> header,
  }) async {
    var url = Uri.https(ApiUrl.baseUrl, apiUrl);
    debugPrint("URL :: ${url.toString()}");
    debugPrint("header :: ${header.toString()}");

    var response = await http.get(url, headers: header).onError((error, stackTrace) {
      debugPrint(error.toString());
      throw error.toString();
    });
    debugPrint('response: ${response.body}');

    var decoded = jsonDecode(response.body);
    // BaseResponse baseResponse = BaseResponse.fromJson(decoded);
    // if (baseResponse.status == AppStrings.error) {
    //   debugPrint('baseResponse.message: ${baseResponse.message}');
    //   CommonFunction.toast(msg: baseResponse.message!, isError: true);
    //   throw "";
    // } else if (baseResponse.status == AppStrings.logout) {
    //   CommonFunction.toast(msg: AppStrings.sessionTimeout, isError: true);
    //
    // }

    debugPrint("response.statusCode :: ${response.statusCode}");
    debugPrint("response.body :: ${response.body}");

    return response;
  }
}