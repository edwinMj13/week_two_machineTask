import 'package:flutter/material.dart';

class TodayLikes {
  final String title;
  final String icon;
  final String offer;

  TodayLikes({required this.title, required this.icon, required this.offer});
}

final likeTodoList = [
  TodayLikes(
    title: "Food Delivery",
    icon: "assets/home/home_like_to_do/food_delivery.png",
    offer: "10% off",
  ),
  TodayLikes(
    title: "Medicines",
    icon: "assets/home/home_like_to_do/medicines.png",
    offer: "5% off",
  ),
  TodayLikes(
    title: "Pet Supplies",
    icon: "assets/home/home_like_to_do/pet_supplies.png",
    offer: "",
  ),
  TodayLikes(
    title: "Gifts",
    icon: "assets/home/home_like_to_do/gifts.png",
    offer: "",
  ),
  TodayLikes(
    title: "Meats",
    icon: "assets/home/home_like_to_do/meat.png",
    offer: "",
  ),
  TodayLikes(
    title: "Cosmetic",
    icon: "assets/home/home_like_to_do/cosmetic.png",
    offer: "",
  ),
  TodayLikes(
    title: "Stationery",
    icon: "assets/home/home_like_to_do/stationery.png",
    offer: "",
  ),
  TodayLikes(
    title: "Stores",
    icon: "assets/home/home_like_to_do/stores.png",
    offer: "10% off",
  ),
];
