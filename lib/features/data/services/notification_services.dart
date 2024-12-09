import 'package:either_dart/either.dart';
import 'package:week_two_machine_task/features/data/data_sources/api_datas/notification_data_source.dart';
import 'package:week_two_machine_task/features/data/models/notification_data_model.dart';
import 'package:week_two_machine_task/features/domain/repositories/notification_data_repository.dart';

import '../models/error_model.dart';

class NotificationServices extends NotificationDataRepository{
final NotificationDataSource notificationDataSource;

  NotificationServices({required this.notificationDataSource});

  @override
  Future<Either<ErrorModel,NotificationDataModel>> getNotifications() {
    // TODO: implement getNotifications
    return notificationDataSource.getNotificationDataSource();
  }
}