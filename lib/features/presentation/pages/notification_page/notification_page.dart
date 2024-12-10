import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:week_two_machine_task/config/utils/colors.dart';
import 'package:week_two_machine_task/config/utils/constants.dart';
import 'package:week_two_machine_task/features/data/models/error_model.dart';
import 'package:week_two_machine_task/features/data/models/notification_data_model.dart';
import 'package:week_two_machine_task/features/domain/use_cases/notification_cases.dart';

import '../../widgets/notifications_items_widget.dart';
import 'bloc/notification_bloc.dart';
import 'bloc/notification_event.dart';
import 'bloc/notification_state.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {

  //int totalProducts = 1000;
  @override
  void initState() {
// TODO: implement initState
    context.read<NotificationBloc>().add(NotificationFetchEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child:
              // Center(
              //   child: Container(
              //     decoration: BoxDecoration(
              //       boxShadow: <BoxShadow>[
              //         BoxShadow(
              //             color: Colors.black54,
              //             blurRadius: 15.0,
              //             offset: Offset(0.0, 0.2)
              //         )
              //       ],
              //     ),
              //     height: 100,
              //     child: Row(
              //       crossAxisAlignment: CrossAxisAlignment.center,
              //       children: [
              //         IconButton(
              //             onPressed: () {},
              //             icon: Icon(
              //               Icons.arrow_back,
              //             ))
              //       ],
              //     ),
              //   ),
              // ),
              AppBar(
            title: const Text(ConstantsUtils.notificationText,style: TextStyle(fontFamily: ConstantsUtils.poppinsFamilyText),),
            leading: IconButton(
                onPressed: () =>Navigator.of(context).pop(),
                style: IconButton.styleFrom(
                  backgroundColor: AppColors.green,
                ),
                icon: const Icon(
                  Icons.arrow_back,
                  color: AppColors.white,
                )),
            elevation: 1,
            shadowColor: Colors.grey,
          )),
      body: NotificationPageContent(runtimeType: runtimeType),
    );
  }
}

class NotificationPageContent extends StatelessWidget {

  NotificationPageContent({
    super.key,
    required this.runtimeType,
  });

  final Type runtimeType;

  // @override
  // void initState() {
  //   scrollController.addListener(NotificationCases.loadMore(scrollController));
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   scrollController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotificationBloc, NotificationState>(
      builder: (context, state) {
        print("Current State - ${state.runtimeType}");
        if (state is NotificationLoadErrorState) {
          return Center(child: Text(state.errorMessage));
        } else if (state is NotificationLoadingState) {
          return const Center(
              child: CircularProgressIndicator(
            color: AppColors.green,
          ));
        } else if (state is NotificationLoadedSuccessState) {
          return ListView.separated(
            physics: const AlwaysScrollableScrollPhysics(),
            shrinkWrap: false,
            //controller: scrollController,
            separatorBuilder: (context,index)=>const Divider(thickness: 0.5,),
            itemBuilder: (context, index) {
              return NotificationItemsWidget(
                dataList: state.model,
                index: index,
              );
            },
            itemCount: state.model.length,
          );
        }
        return const SizedBox();
      },
    );
  }


}
