import 'dart:convert';

import 'package:either_dart/either.dart';
import 'package:week_two_machine_task/features/data/data_sources/api_datas/notification_data_source.dart';
import 'package:week_two_machine_task/features/data/models/PagignationModel.dart';
import 'package:week_two_machine_task/features/data/models/notification_data_model.dart';
import 'package:week_two_machine_task/features/domain/repositories/notification_data_repository.dart';

import '../models/error_model.dart';
import 'package:http/http.dart' as http;

class NotificationServices extends NotificationDataRepository {
  final NotificationDataSource notificationDataSource;

  NotificationServices({required this.notificationDataSource});

  @override
  Future<Either<ErrorModel, NotificationDataModel>> getNotifications() {
    // TODO: implement getNotifications
    return notificationDataSource.getNotificationDataSource();
  }

  @override
  Future<Either<ErrorModel, PagignationModel>> getPagignation() async {
    // TODO: implement getPagignation
    try {
      final response = await http.get(Uri.parse(
          "https://dummyjson.com/products?limit=10&skip=20&select=title,price,thumbnail"));

      final data = jsonDecode(response.body);
      final dataList = PagignationModel.fromJson(data);
      return Right(dataList);
    } catch (e) {
      return Left(ErrorModel(message: e.toString()));
    }
  }
}
