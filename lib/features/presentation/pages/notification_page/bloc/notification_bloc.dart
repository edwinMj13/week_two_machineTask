import 'dart:async';
import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:week_two_machine_task/features/data/data_sources/hardcode_data/dummy_notification_data.dart';
import 'package:week_two_machine_task/features/data/models/PagignationModel.dart';
import 'package:week_two_machine_task/features/domain/use_cases/notification_cases.dart';

import '../../../../data/models/notification_data_model.dart';
import 'notification_event.dart';
import 'notification_state.dart';
import 'package:http/http.dart' as http;

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final NotificationCases notificationCases;

  NotificationBloc({required this.notificationCases})
      : super(NotificationLoadingState()) {
    on<NotificationFetchEvent>(notificationFetchEvent);
  }

  Future<void> notificationFetchEvent(
      NotificationFetchEvent event, Emitter<NotificationState> emit) async {
    emit(NotificationLoadingState());
    // await notificationCases.getPagignation().then((dataList) {
    //   final lastData = dataList.fold((left) => left, (right) => right);
    //   final dataNoti = lastData as PagignationModel;
    //   emit(NotificationLoadedSuccessState(model: dataNoti.products!));
    // });
    await notificationCases.getNotificationCases().then((data) async {

     final lastData = data.fold((left)=>left, (right)=>right);
     final dataNoti = lastData as NotificationDataModel;
     emit(NotificationLoadedSuccessState(model: dataNoti.data!));

   });
/*await Future.delayed(const Duration(seconds: 2)).then((_){
        emit(NotificationLoadedSuccessState(model: DummyNotificationData.dummyNotificationData));
      });
     */

    //print("Bloc Page $lastData");
  }
}
