import 'dart:convert';

import 'package:either_dart/either.dart';
import 'package:week_two_machine_task/config/utils/constants.dart';
import 'package:week_two_machine_task/features/data/models/error_model.dart';
import 'package:week_two_machine_task/features/data/models/notification_data_model.dart';
import 'package:http/http.dart' as http;
class NotificationDataSource {
  Future<Either<ErrorModel,NotificationDataModel>> getNotificationDataSource() async {
    try {
      final response = await http.get(Uri.parse(ConstantsUtils.url));
      final jsonResponse = jsonDecode(response.body);
      if (response.statusCode >= 200 && response.statusCode < 300) {
        //print("response NotificationDataSource Class $jsonResponse");
        final success = NotificationDataModel.fromJson(jsonResponse);
        print("Success ${success.success}");
        print("Success ${success.data}");
        return Right(success);
      } else {
        return Left(ErrorModel(message: response.body.toString(),
            statusCode: response.statusCode.toString()));
      }
    } catch (e) {
      return Left(ErrorModel(message: e.toString(), statusCode: "Exception Code"));
    }
  }
}