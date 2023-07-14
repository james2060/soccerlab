// To parse this JSON data, do
//
//     final matchInfo = matchInfoFromJson(jsonString);

import 'dart:convert';

MatchInfo matchInfoFromJson(String str) => MatchInfo.fromJson(json.decode(str));

String matchInfoToJson(MatchInfo data) => json.encode(data.toJson());
/*
*  경기 정보를 관리하는 클래스
* */
class MatchInfo {
  String name;
  List<Match> matches;

  MatchInfo({
    required this.name,
    required this.matches,
  });

  factory MatchInfo.fromJson(Map<String, dynamic> json) => MatchInfo(
    name: json["name"],
    matches: List<Match>.from(json["matches"].map((x) => Match.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "matches": List<dynamic>.from(matches.map((x) => x.toJson())),
  };
}
/*
* 경기 정보 클래스
* */

class Match {
  String round;
  DateTime date;
  String starttime;
  String endtime;
  String location;
  String team1;
  String team2;
  int matchresult;
  int numofparticipants;
  int team1Score;
  int team2Score;

  Match({
    required this.round,
    required this.date,
    required this.starttime,
    required this.endtime,
    required this.location,
    required this.team1,
    required this.team2,
    required this.matchresult,
    required this.numofparticipants,
    required this.team1Score,
    required this.team2Score,
  });

  factory Match.fromJson(Map<String, dynamic> json) => Match(
    round: json["round"],
    date: DateTime.parse(json["date"]),
    starttime: json["starttime"],
    endtime: json["endtime"],
    location: json["location"],
    team1: json["team1"],
    team2: json["team2"],
    matchresult: json["matchresult"],
    numofparticipants: json["numofparticipants"],
    team1Score: json["team1score"],
    team2Score: json["team2score"],
  );

  Map<String, dynamic> toJson() => {
    "round": round,
    "date": "${date.year.toString().padLeft(4, '0')}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}",
    "starttime": starttime,
    "endtime": endtime,
    "location": location,
    "team1": team1,
    "team2": team2,
    "matchresult": matchresult,
    "numofparticipants": numofparticipants,
    "team1score": team1Score,
    "team2score": team2Score,
  };
}
