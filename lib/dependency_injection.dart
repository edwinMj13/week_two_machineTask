import 'package:get_it/get_it.dart';
import 'package:week_two_machine_task/features/data/data_sources/api_datas/notification_data_source.dart';
import 'package:week_two_machine_task/features/data/services/notification_services.dart';
import 'package:week_two_machine_task/features/domain/use_cases/notification_cases.dart';
import 'package:week_two_machine_task/features/presentation/notification_page/bloc/notification_bloc.dart';

import 'features/domain/repositories/notification_data_repository.dart';

GetIt getIt = GetIt.instance;

void injection() {
  getIt.registerLazySingleton<NotificationDataSource>(
      () => NotificationDataSource());

  getIt.registerLazySingleton<NotificationDataRepository>(() =>
      NotificationServices(
          notificationDataSource: getIt<NotificationDataSource>()));

  getIt.registerLazySingleton<NotificationCases>(() => NotificationCases(
      notificationDataRepository: getIt<NotificationDataRepository>()));

  getIt.registerFactory(
      () => NotificationBloc(notificationCases: getIt<NotificationCases>()));
}