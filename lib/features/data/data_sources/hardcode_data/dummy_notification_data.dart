import '../../models/notification_data_model.dart';

class DummyNotificationData{
  static  List<Data> dummyNotificationData = [
    Data(
      image: "order_assigned.png",
      body:
      "1 item from your order is unavailable at the moment. Your money will be refunded.",
      timestamp: "2022-12-27T11:11:54.754",
      title: "Your order has been assigned",
    ),
    Data(
      image: "order_cancelled.png",
      body:
      "1 item from your order is unavailable at the moment. Your money will be refunded.",
      timestamp: "2022-12-27T11:11:54.754",
      title: "Order Cancelled",
    ),
    Data(
      image: "order_delivered.png",
      body:
      "1 item from your order is unavailable at the moment. Your money will be refunded.",
      timestamp: "2022-5-27T11:11:54.754",
      title: "‘Order Delivered",
    ),
    Data(
      image: "order_unavailable.png",
      body:
      "1 item from your order is unavailable at the moment. Your money will be refunded.",
      timestamp: "2022-11-27T11:9:54.754",
      title: "1 item unavailable",
    ),
    Data(
      image: "promotion_notify.png",
      body:
      "1 item from your order is unavailable at the moment. Your money will be refunded.",
      timestamp: "2022-12-27T11:10:54.754",
      title: "Get up to INR 100/-cashback using googlepay",
    ),
    Data(
      image: "promotion_marketplace.png",
      body:
      "1 item from your order is unavailable at the moment. Your money will be refunded.",
      timestamp: "2022-12-27T11:11:54.754",
      title: "‘Hurry’Today Mega sale in D-mart",
    ),
  ];
}