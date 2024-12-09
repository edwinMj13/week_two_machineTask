import 'package:week_two_machine_task/features/data/models/notification_data_model.dart';

abstract class NotificationState{}

class NotificationLoadingState extends NotificationState{}

class NotificationLoadedSuccessState extends NotificationState{
  final List<Data> model;

  NotificationLoadedSuccessState({required this.model});
}

class NotificationLoadErrorState extends NotificationState{
  final String errorMessage;

  NotificationLoadErrorState({required this.errorMessage});

}