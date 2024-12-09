import 'package:either_dart/either.dart';
import 'package:week_two_machine_task/features/data/models/notification_data_model.dart';
import 'package:week_two_machine_task/features/data/services/notification_services.dart';
import 'package:week_two_machine_task/features/domain/repositories/notification_data_repository.dart';

import '../../data/models/error_model.dart';

class NotificationCases {
  final NotificationDataRepository notificationDataRepository;

  NotificationCases({required this.notificationDataRepository});

  Future<Either<ErrorModel,NotificationDataModel>> getNotificationCases() {
    return notificationDataRepository.getNotifications();
  }
}
