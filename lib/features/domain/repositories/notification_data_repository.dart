import 'package:either_dart/either.dart';
import 'package:week_two_machine_task/features/data/models/error_model.dart';
import 'package:week_two_machine_task/features/data/models/notification_data_model.dart';

abstract class NotificationDataRepository{
  Future<Either<ErrorModel,NotificationDataModel>> getNotifications();
}