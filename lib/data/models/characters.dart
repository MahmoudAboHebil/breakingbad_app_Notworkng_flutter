import 'package:flutter/material.dart';

class Character {
  late int charID;
  late String name;
  late String nickName;
  late String image;
  late List jobs;
  late String statusIfDeadOrAlive;
  late List appearanceOfSeasons;
  late String actorName;
  late String categoryForTwoSeries;
  late List betterCallSaulAppearance;
  Character.fromJson(Map<String, dynamic> json) {
    charID = json["char_id"];
    name = json["name"];
    nickName = json["nickname"];
    image = json["img"];
    jobs = json["occupation"];
    statusIfDeadOrAlive = json["status"];
    appearanceOfSeasons = json["appearance"];
    actorName = json["portrayed"];
    categoryForTwoSeries = json["category"];
    betterCallSaulAppearance = json["better_call_saul_appearance"];
  }
}
