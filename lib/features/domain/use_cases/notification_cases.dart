import 'dart:isolate';

import 'package:either_dart/either.dart';
import 'package:flutter/cupertino.dart';
import 'package:week_two_machine_task/features/data/models/PagignationModel.dart';
import 'package:week_two_machine_task/features/data/models/notification_data_model.dart';
import 'package:week_two_machine_task/features/data/services/notification_services.dart';
import 'package:week_two_machine_task/features/domain/repositories/notification_data_repository.dart';
import 'package:week_two_machine_task/features/presentation/pages/notification_page/bloc/notification_bloc.dart';
import 'package:week_two_machine_task/features/presentation/pages/notification_page/bloc/notification_event.dart';

import '../../../dependency_injection.dart';
import '../../data/models/error_model.dart';

class NotificationCases {
  final NotificationDataRepository notificationDataRepository;

  NotificationCases({required this.notificationDataRepository});

  Future<Either<ErrorModel,NotificationDataModel>> getNotificationCases() async {
    final result = await Isolate.run(()=>notificationDataRepository.getNotifications());
    return result;
    //return notificationDataRepository.getNotifications();
  }
 //  Future<Either<ErrorModel,PagignationModel>> getPagignation() async {
 //    final result = await Isolate.run(()=>notificationDataRepository.getPagignation());
 //    return result;
 //    //return notificationDataRepository.getNotifications();
 //  }
 // static  loadMore(ScrollController scrollController){
 //      if(scrollController.position.pixels == scrollController.position.maxScrollExtent){
 //        getIt<NotificationBloc>().add(NotificationFetchEvent());
 //      }
 //  }

}
